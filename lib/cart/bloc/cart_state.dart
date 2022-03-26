part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.error(String message) = _Error;

  const factory CartState.loaded({
    required Cart cart,
    required double subTotal,
    required double shippingCost,
    required double tax,
    required int productsCount,
  }) = _Loaded;

  const factory CartState.loading() = _Loading;

  // factory CartState.fromJson(Map<String, dynamic> json) =>
  //     _$CartStateFromJson(json);
}
