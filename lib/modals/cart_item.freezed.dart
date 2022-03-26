// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
class _$CartItemTearOff {
  const _$CartItemTearOff();

  _CartItem call(
      {required int id,
      required String name,
      required String thumbnailImage,
      required double tax,
      required double price,
      required double shippingCost,
      required int currentStockCount,
      required int quantity}) {
    return _CartItem(
      id: id,
      name: name,
      thumbnailImage: thumbnailImage,
      tax: tax,
      price: price,
      shippingCost: shippingCost,
      currentStockCount: currentStockCount,
      quantity: quantity,
    );
  }

  CartItem fromJson(Map<String, Object?> json) {
    return CartItem.fromJson(json);
  }
}

/// @nodoc
const $CartItem = _$CartItemTearOff();

/// @nodoc
mixin _$CartItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get thumbnailImage => throw _privateConstructorUsedError;
  double get tax => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get shippingCost => throw _privateConstructorUsedError;
  int get currentStockCount => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String thumbnailImage,
      double tax,
      double price,
      double shippingCost,
      int currentStockCount,
      int quantity});
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res> implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  final CartItem _value;
  // ignore: unused_field
  final $Res Function(CartItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? thumbnailImage = freezed,
    Object? tax = freezed,
    Object? price = freezed,
    Object? shippingCost = freezed,
    Object? currentStockCount = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: thumbnailImage == freezed
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      shippingCost: shippingCost == freezed
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as double,
      currentStockCount: currentStockCount == freezed
          ? _value.currentStockCount
          : currentStockCount // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) then) =
      __$CartItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String thumbnailImage,
      double tax,
      double price,
      double shippingCost,
      int currentStockCount,
      int quantity});
}

/// @nodoc
class __$CartItemCopyWithImpl<$Res> extends _$CartItemCopyWithImpl<$Res>
    implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(_CartItem _value, $Res Function(_CartItem) _then)
      : super(_value, (v) => _then(v as _CartItem));

  @override
  _CartItem get _value => super._value as _CartItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? thumbnailImage = freezed,
    Object? tax = freezed,
    Object? price = freezed,
    Object? shippingCost = freezed,
    Object? currentStockCount = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_CartItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: thumbnailImage == freezed
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      shippingCost: shippingCost == freezed
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as double,
      currentStockCount: currentStockCount == freezed
          ? _value.currentStockCount
          : currentStockCount // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartItem with DiagnosticableTreeMixin implements _CartItem {
  const _$_CartItem(
      {required this.id,
      required this.name,
      required this.thumbnailImage,
      required this.tax,
      required this.price,
      required this.shippingCost,
      required this.currentStockCount,
      required this.quantity});

  factory _$_CartItem.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String thumbnailImage;
  @override
  final double tax;
  @override
  final double price;
  @override
  final double shippingCost;
  @override
  final int currentStockCount;
  @override
  final int quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartItem(id: $id, name: $name, thumbnailImage: $thumbnailImage, tax: $tax, price: $price, shippingCost: $shippingCost, currentStockCount: $currentStockCount, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('thumbnailImage', thumbnailImage))
      ..add(DiagnosticsProperty('tax', tax))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('shippingCost', shippingCost))
      ..add(DiagnosticsProperty('currentStockCount', currentStockCount))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.thumbnailImage, thumbnailImage) &&
            const DeepCollectionEquality().equals(other.tax, tax) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.shippingCost, shippingCost) &&
            const DeepCollectionEquality()
                .equals(other.currentStockCount, currentStockCount) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(thumbnailImage),
      const DeepCollectionEquality().hash(tax),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(shippingCost),
      const DeepCollectionEquality().hash(currentStockCount),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$CartItemCopyWith<_CartItem> get copyWith =>
      __$CartItemCopyWithImpl<_CartItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartItemToJson(this);
  }
}

abstract class _CartItem implements CartItem {
  const factory _CartItem(
      {required int id,
      required String name,
      required String thumbnailImage,
      required double tax,
      required double price,
      required double shippingCost,
      required int currentStockCount,
      required int quantity}) = _$_CartItem;

  factory _CartItem.fromJson(Map<String, dynamic> json) = _$_CartItem.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get thumbnailImage;
  @override
  double get tax;
  @override
  double get price;
  @override
  double get shippingCost;
  @override
  int get currentStockCount;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$CartItemCopyWith<_CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}
