part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addProductToACart({
    required Cart cart,
    required CartItem product,
  }) = _AddProductToCart;

  const factory CartEvent.loadCart() = _LoadCart;

  const factory CartEvent.refresh() = _Refresh;

  const factory CartEvent.removeProductFromACart({
    required Cart cart,
    required CartItem product,
  }) = _RemoveProductFromCart;

  const factory CartEvent.updateProductQuantity({
    required Cart cart,
    required CartItem product,
    required int quantity,
  }) = _UpdateProductQuantity;
}
