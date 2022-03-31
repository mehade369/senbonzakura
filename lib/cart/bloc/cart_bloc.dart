import 'dart:async';

import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senbonzakura/modals/modals.dart';
import 'package:senbonzakura/repositories/repositories.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';
// part 'cart_bloc.g.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc({
    required AuthRepository authRepository,
    required CartRepository cartRepository,
  }) : super(const CartState.loading()) {
    on<CartEvent>(
      (event, emit) async {
        await event.map(
          loadCart: (event) async {
            await Future<void>.delayed(const Duration(seconds: 1));

            emit(
              repository.getProducts().fold(
                    CartState.error,
                    _calculate,
                  ),
            );
          },
          refresh: (event) {},
          addProductToACart: (event) {
            emit(
              state.maybeMap(
                loaded: (loaded) => _calculate(
                  loaded.cart.copyWith(
                    items: [...loaded.cart.items, event.product],
                  ),
                ),
                orElse: () => state,
              ),
            );
          },
          removeProductFromACart: (event) {
            emit(
              state.maybeMap(
                loaded: (loaded) => _calculate(
                  loaded.cart.copyWith(
                    items: [...loaded.cart.items]..remove(event.product),
                  ),
                ),
                orElse: () => state,
              ),
            );
          },
          updateProductQuantity: (event) {
            emit(
              state.maybeMap(
                loaded: (loaded) => _calculate(
                  loaded.cart.copyWith(
                    items: loaded.cart.items.map(
                      (e) => e == event.product
                          ? e.copyWith(quantity: event.quantity)
                          : e,
                    ),
                  ),
                ),
                orElse: () => state,
              ),
            );
          },
        );
      },
    );
  }

  final CartRepository repository = CartRepository();

  // This method is used to calculate the CartState's _Loaded State
  _Loaded _calculate(Cart cart) {
    return _Loaded(
      cart: cart,
      productsCount: cart.totalQuantity,
      shippingCost: cart.totalShippingCost,
      subTotal: cart.totalPrice,
      tax: cart.totalTax,
    );
  }
}
