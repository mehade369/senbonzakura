part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.loadCart() = _LoadCart;

  const factory CartEvent.addNew() = _AddNew;

  const factory CartEvent.remove() = _Remove;

  const factory CartEvent.clear() = _Clear;

  const factory CartEvent.update() = _Update;

  const factory CartEvent.updateQuantity() = _UpdateQuantity;

  const factory CartEvent.updatePrice() = _UpdatePrice;

  const factory CartEvent.updateTotal() = _UpdateTotal;

  const factory CartEvent.updateTotalPrice() = _UpdateTotalPrice;
}
