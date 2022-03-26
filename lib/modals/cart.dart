import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senbonzakura/modals/modals.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
// In real life, there would be a Cart from every Shop/seller !!
class Cart with _$Cart {
  const factory Cart({
    required int id,
    required String name,
    required Iterable<CartItem> items,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

extension CartEx on Cart {
  double get totalPrice => items.fold(
        0,
        (total, product) => total + product.price * product.quantity,
      );

  int get totalQuantity =>
      items.fold(0, (total, product) => total + product.quantity);

  double get totalShippingCost => items.fold(
        0,
        (total, product) => total + (product.shippingCost * product.quantity),
      );

  double get totalTax => items.fold(
        0,
        (total, product) => total + (product.tax * product.quantity),
      );
}

extension CartsEx on Iterable<Cart> {
  double get totalPrice => fold(0, (total, cart) => total + cart.totalPrice);

  int get totalQuantity => fold(0, (total, cart) => total + cart.totalQuantity);

  double get totalShippingCost =>
      fold(0, (total, cart) => total + cart.totalShippingCost);

  double get totalTax => fold(0, (total, cart) => total + cart.totalTax);
}
