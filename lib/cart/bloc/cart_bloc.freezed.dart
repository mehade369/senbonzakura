// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartEventTearOff {
  const _$CartEventTearOff();

  _AddProductToCart addProductToACart(
      {required Cart cart, required CartItem product}) {
    return _AddProductToCart(
      cart: cart,
      product: product,
    );
  }

  _LoadCart loadCart() {
    return const _LoadCart();
  }

  _Refresh refresh() {
    return const _Refresh();
  }

  _RemoveProductFromCart removeProductFromACart(
      {required Cart cart, required CartItem product}) {
    return _RemoveProductFromCart(
      cart: cart,
      product: product,
    );
  }

  _UpdateProductQuantity updateProductQuantity(
      {required Cart cart, required CartItem product, required int quantity}) {
    return _UpdateProductQuantity(
      cart: cart,
      product: product,
      quantity: quantity,
    );
  }
}

/// @nodoc
const $CartEvent = _$CartEventTearOff();

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart cart, CartItem product) addProductToACart,
    required TResult Function() loadCart,
    required TResult Function() refresh,
    required TResult Function(Cart cart, CartItem product)
        removeProductFromACart,
    required TResult Function(Cart cart, CartItem product, int quantity)
        updateProductQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cart cart, CartItem product)? addProductToACart,
    TResult Function()? loadCart,
    TResult Function()? refresh,
    TResult Function(Cart cart, CartItem product)? removeProductFromACart,
    TResult Function(Cart cart, CartItem product, int quantity)?
        updateProductQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart cart, CartItem product)? addProductToACart,
    TResult Function()? loadCart,
    TResult Function()? refresh,
    TResult Function(Cart cart, CartItem product)? removeProductFromACart,
    TResult Function(Cart cart, CartItem product, int quantity)?
        updateProductQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductToCart value) addProductToACart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_RemoveProductFromCart value)
        removeProductFromACart,
    required TResult Function(_UpdateProductQuantity value)
        updateProductQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProductToCart value)? addProductToACart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_RemoveProductFromCart value)? removeProductFromACart,
    TResult Function(_UpdateProductQuantity value)? updateProductQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductToCart value)? addProductToACart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_RemoveProductFromCart value)? removeProductFromACart,
    TResult Function(_UpdateProductQuantity value)? updateProductQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$AddProductToCartCopyWith<$Res> {
  factory _$AddProductToCartCopyWith(
          _AddProductToCart value, $Res Function(_AddProductToCart) then) =
      __$AddProductToCartCopyWithImpl<$Res>;
  $Res call({Cart cart, CartItem product});

  $CartCopyWith<$Res> get cart;
  $CartItemCopyWith<$Res> get product;
}

/// @nodoc
class __$AddProductToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$AddProductToCartCopyWith<$Res> {
  __$AddProductToCartCopyWithImpl(
      _AddProductToCart _value, $Res Function(_AddProductToCart) _then)
      : super(_value, (v) => _then(v as _AddProductToCart));

  @override
  _AddProductToCart get _value => super._value as _AddProductToCart;

  @override
  $Res call({
    Object? cart = freezed,
    Object? product = freezed,
  }) {
    return _then(_AddProductToCart(
      cart: cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }

  @override
  $CartCopyWith<$Res> get cart {
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }

  @override
  $CartItemCopyWith<$Res> get product {
    return $CartItemCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_AddProductToCart implements _AddProductToCart {
  const _$_AddProductToCart({required this.cart, required this.product});

  @override
  final Cart cart;
  @override
  final CartItem product;

  @override
  String toString() {
    return 'CartEvent.addProductToACart(cart: $cart, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddProductToCart &&
            const DeepCollectionEquality().equals(other.cart, cart) &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cart),
      const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$AddProductToCartCopyWith<_AddProductToCart> get copyWith =>
      __$AddProductToCartCopyWithImpl<_AddProductToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart cart, CartItem product) addProductToACart,
    required TResult Function() loadCart,
    required TResult Function() refresh,
    required TResult Function(Cart cart, CartItem product)
        removeProductFromACart,
    required TResult Function(Cart cart, CartItem product, int quantity)
        updateProductQuantity,
  }) {
    return addProductToACart(cart, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cart cart, CartItem product)? addProductToACart,
    TResult Function()? loadCart,
    TResult Function()? refresh,
    TResult Function(Cart cart, CartItem product)? removeProductFromACart,
    TResult Function(Cart cart, CartItem product, int quantity)?
        updateProductQuantity,
  }) {
    return addProductToACart?.call(cart, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart cart, CartItem product)? addProductToACart,
    TResult Function()? loadCart,
    TResult Function()? refresh,
    TResult Function(Cart cart, CartItem product)? removeProductFromACart,
    TResult Function(Cart cart, CartItem product, int quantity)?
        updateProductQuantity,
    required TResult orElse(),
  }) {
    if (addProductToACart != null) {
      return addProductToACart(cart, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductToCart value) addProductToACart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_RemoveProductFromCart value)
        removeProductFromACart,
    required TResult Function(_UpdateProductQuantity value)
        updateProductQuantity,
  }) {
    return addProductToACart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProductToCart value)? addProductToACart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_RemoveProductFromCart value)? removeProductFromACart,
    TResult Function(_UpdateProductQuantity value)? updateProductQuantity,
  }) {
    return addProductToACart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductToCart value)? addProductToACart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_RemoveProductFromCart value)? removeProductFromACart,
    TResult Function(_UpdateProductQuantity value)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (addProductToACart != null) {
      return addProductToACart(this);
    }
    return orElse();
  }
}

abstract class _AddProductToCart implements CartEvent {
  const factory _AddProductToCart(
      {required Cart cart, required CartItem product}) = _$_AddProductToCart;

  Cart get cart;
  CartItem get product;
  @JsonKey(ignore: true)
  _$AddProductToCartCopyWith<_AddProductToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadCartCopyWith<$Res> {
  factory _$LoadCartCopyWith(_LoadCart value, $Res Function(_LoadCart) then) =
      __$LoadCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$LoadCartCopyWith<$Res> {
  __$LoadCartCopyWithImpl(_LoadCart _value, $Res Function(_LoadCart) _then)
      : super(_value, (v) => _then(v as _LoadCart));

  @override
  _LoadCart get _value => super._value as _LoadCart;
}

/// @nodoc

class _$_LoadCart implements _LoadCart {
  const _$_LoadCart();

  @override
  String toString() {
    return 'CartEvent.loadCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart cart, CartItem product) addProductToACart,
    required TResult Function() loadCart,
    required TResult Function() refresh,
    required TResult Function(Cart cart, CartItem product)
        removeProductFromACart,
    required TResult Function(Cart cart, CartItem product, int quantity)
        updateProductQuantity,
  }) {
    return loadCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cart cart, CartItem product)? addProductToACart,
    TResult Function()? loadCart,
    TResult Function()? refresh,
    TResult Function(Cart cart, CartItem product)? removeProductFromACart,
    TResult Function(Cart cart, CartItem product, int quantity)?
        updateProductQuantity,
  }) {
    return loadCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart cart, CartItem product)? addProductToACart,
    TResult Function()? loadCart,
    TResult Function()? refresh,
    TResult Function(Cart cart, CartItem product)? removeProductFromACart,
    TResult Function(Cart cart, CartItem product, int quantity)?
        updateProductQuantity,
    required TResult orElse(),
  }) {
    if (loadCart != null) {
      return loadCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductToCart value) addProductToACart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_RemoveProductFromCart value)
        removeProductFromACart,
    required TResult Function(_UpdateProductQuantity value)
        updateProductQuantity,
  }) {
    return loadCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProductToCart value)? addProductToACart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_RemoveProductFromCart value)? removeProductFromACart,
    TResult Function(_UpdateProductQuantity value)? updateProductQuantity,
  }) {
    return loadCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductToCart value)? addProductToACart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_RemoveProductFromCart value)? removeProductFromACart,
    TResult Function(_UpdateProductQuantity value)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (loadCart != null) {
      return loadCart(this);
    }
    return orElse();
  }
}

abstract class _LoadCart implements CartEvent {
  const factory _LoadCart() = _$_LoadCart;
}

/// @nodoc
abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(_Refresh _value, $Res Function(_Refresh) _then)
      : super(_value, (v) => _then(v as _Refresh));

  @override
  _Refresh get _value => super._value as _Refresh;
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'CartEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart cart, CartItem product) addProductToACart,
    required TResult Function() loadCart,
    required TResult Function() refresh,
    required TResult Function(Cart cart, CartItem product)
        removeProductFromACart,
    required TResult Function(Cart cart, CartItem product, int quantity)
        updateProductQuantity,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cart cart, CartItem product)? addProductToACart,
    TResult Function()? loadCart,
    TResult Function()? refresh,
    TResult Function(Cart cart, CartItem product)? removeProductFromACart,
    TResult Function(Cart cart, CartItem product, int quantity)?
        updateProductQuantity,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart cart, CartItem product)? addProductToACart,
    TResult Function()? loadCart,
    TResult Function()? refresh,
    TResult Function(Cart cart, CartItem product)? removeProductFromACart,
    TResult Function(Cart cart, CartItem product, int quantity)?
        updateProductQuantity,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductToCart value) addProductToACart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_RemoveProductFromCart value)
        removeProductFromACart,
    required TResult Function(_UpdateProductQuantity value)
        updateProductQuantity,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProductToCart value)? addProductToACart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_RemoveProductFromCart value)? removeProductFromACart,
    TResult Function(_UpdateProductQuantity value)? updateProductQuantity,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductToCart value)? addProductToACart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_RemoveProductFromCart value)? removeProductFromACart,
    TResult Function(_UpdateProductQuantity value)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements CartEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
abstract class _$RemoveProductFromCartCopyWith<$Res> {
  factory _$RemoveProductFromCartCopyWith(_RemoveProductFromCart value,
          $Res Function(_RemoveProductFromCart) then) =
      __$RemoveProductFromCartCopyWithImpl<$Res>;
  $Res call({Cart cart, CartItem product});

  $CartCopyWith<$Res> get cart;
  $CartItemCopyWith<$Res> get product;
}

/// @nodoc
class __$RemoveProductFromCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$RemoveProductFromCartCopyWith<$Res> {
  __$RemoveProductFromCartCopyWithImpl(_RemoveProductFromCart _value,
      $Res Function(_RemoveProductFromCart) _then)
      : super(_value, (v) => _then(v as _RemoveProductFromCart));

  @override
  _RemoveProductFromCart get _value => super._value as _RemoveProductFromCart;

  @override
  $Res call({
    Object? cart = freezed,
    Object? product = freezed,
  }) {
    return _then(_RemoveProductFromCart(
      cart: cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }

  @override
  $CartCopyWith<$Res> get cart {
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }

  @override
  $CartItemCopyWith<$Res> get product {
    return $CartItemCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_RemoveProductFromCart implements _RemoveProductFromCart {
  const _$_RemoveProductFromCart({required this.cart, required this.product});

  @override
  final Cart cart;
  @override
  final CartItem product;

  @override
  String toString() {
    return 'CartEvent.removeProductFromACart(cart: $cart, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveProductFromCart &&
            const DeepCollectionEquality().equals(other.cart, cart) &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cart),
      const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$RemoveProductFromCartCopyWith<_RemoveProductFromCart> get copyWith =>
      __$RemoveProductFromCartCopyWithImpl<_RemoveProductFromCart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart cart, CartItem product) addProductToACart,
    required TResult Function() loadCart,
    required TResult Function() refresh,
    required TResult Function(Cart cart, CartItem product)
        removeProductFromACart,
    required TResult Function(Cart cart, CartItem product, int quantity)
        updateProductQuantity,
  }) {
    return removeProductFromACart(cart, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cart cart, CartItem product)? addProductToACart,
    TResult Function()? loadCart,
    TResult Function()? refresh,
    TResult Function(Cart cart, CartItem product)? removeProductFromACart,
    TResult Function(Cart cart, CartItem product, int quantity)?
        updateProductQuantity,
  }) {
    return removeProductFromACart?.call(cart, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart cart, CartItem product)? addProductToACart,
    TResult Function()? loadCart,
    TResult Function()? refresh,
    TResult Function(Cart cart, CartItem product)? removeProductFromACart,
    TResult Function(Cart cart, CartItem product, int quantity)?
        updateProductQuantity,
    required TResult orElse(),
  }) {
    if (removeProductFromACart != null) {
      return removeProductFromACart(cart, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductToCart value) addProductToACart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_RemoveProductFromCart value)
        removeProductFromACart,
    required TResult Function(_UpdateProductQuantity value)
        updateProductQuantity,
  }) {
    return removeProductFromACart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProductToCart value)? addProductToACart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_RemoveProductFromCart value)? removeProductFromACart,
    TResult Function(_UpdateProductQuantity value)? updateProductQuantity,
  }) {
    return removeProductFromACart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductToCart value)? addProductToACart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_RemoveProductFromCart value)? removeProductFromACart,
    TResult Function(_UpdateProductQuantity value)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (removeProductFromACart != null) {
      return removeProductFromACart(this);
    }
    return orElse();
  }
}

abstract class _RemoveProductFromCart implements CartEvent {
  const factory _RemoveProductFromCart(
      {required Cart cart,
      required CartItem product}) = _$_RemoveProductFromCart;

  Cart get cart;
  CartItem get product;
  @JsonKey(ignore: true)
  _$RemoveProductFromCartCopyWith<_RemoveProductFromCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateProductQuantityCopyWith<$Res> {
  factory _$UpdateProductQuantityCopyWith(_UpdateProductQuantity value,
          $Res Function(_UpdateProductQuantity) then) =
      __$UpdateProductQuantityCopyWithImpl<$Res>;
  $Res call({Cart cart, CartItem product, int quantity});

  $CartCopyWith<$Res> get cart;
  $CartItemCopyWith<$Res> get product;
}

/// @nodoc
class __$UpdateProductQuantityCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$UpdateProductQuantityCopyWith<$Res> {
  __$UpdateProductQuantityCopyWithImpl(_UpdateProductQuantity _value,
      $Res Function(_UpdateProductQuantity) _then)
      : super(_value, (v) => _then(v as _UpdateProductQuantity));

  @override
  _UpdateProductQuantity get _value => super._value as _UpdateProductQuantity;

  @override
  $Res call({
    Object? cart = freezed,
    Object? product = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_UpdateProductQuantity(
      cart: cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartItem,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $CartCopyWith<$Res> get cart {
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }

  @override
  $CartItemCopyWith<$Res> get product {
    return $CartItemCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_UpdateProductQuantity implements _UpdateProductQuantity {
  const _$_UpdateProductQuantity(
      {required this.cart, required this.product, required this.quantity});

  @override
  final Cart cart;
  @override
  final CartItem product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.updateProductQuantity(cart: $cart, product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProductQuantity &&
            const DeepCollectionEquality().equals(other.cart, cart) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cart),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$UpdateProductQuantityCopyWith<_UpdateProductQuantity> get copyWith =>
      __$UpdateProductQuantityCopyWithImpl<_UpdateProductQuantity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart cart, CartItem product) addProductToACart,
    required TResult Function() loadCart,
    required TResult Function() refresh,
    required TResult Function(Cart cart, CartItem product)
        removeProductFromACart,
    required TResult Function(Cart cart, CartItem product, int quantity)
        updateProductQuantity,
  }) {
    return updateProductQuantity(cart, product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cart cart, CartItem product)? addProductToACart,
    TResult Function()? loadCart,
    TResult Function()? refresh,
    TResult Function(Cart cart, CartItem product)? removeProductFromACart,
    TResult Function(Cart cart, CartItem product, int quantity)?
        updateProductQuantity,
  }) {
    return updateProductQuantity?.call(cart, product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart cart, CartItem product)? addProductToACart,
    TResult Function()? loadCart,
    TResult Function()? refresh,
    TResult Function(Cart cart, CartItem product)? removeProductFromACart,
    TResult Function(Cart cart, CartItem product, int quantity)?
        updateProductQuantity,
    required TResult orElse(),
  }) {
    if (updateProductQuantity != null) {
      return updateProductQuantity(cart, product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductToCart value) addProductToACart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_RemoveProductFromCart value)
        removeProductFromACart,
    required TResult Function(_UpdateProductQuantity value)
        updateProductQuantity,
  }) {
    return updateProductQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProductToCart value)? addProductToACart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_RemoveProductFromCart value)? removeProductFromACart,
    TResult Function(_UpdateProductQuantity value)? updateProductQuantity,
  }) {
    return updateProductQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductToCart value)? addProductToACart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_RemoveProductFromCart value)? removeProductFromACart,
    TResult Function(_UpdateProductQuantity value)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (updateProductQuantity != null) {
      return updateProductQuantity(this);
    }
    return orElse();
  }
}

abstract class _UpdateProductQuantity implements CartEvent {
  const factory _UpdateProductQuantity(
      {required Cart cart,
      required CartItem product,
      required int quantity}) = _$_UpdateProductQuantity;

  Cart get cart;
  CartItem get product;
  int get quantity;
  @JsonKey(ignore: true)
  _$UpdateProductQuantityCopyWith<_UpdateProductQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _Error error(String message) {
    return _Error(
      message,
    );
  }

  _Loaded loaded(
      {required Cart cart,
      required double subTotal,
      required double shippingCost,
      required double tax,
      required int productsCount}) {
    return _Loaded(
      cart: cart,
      subTotal: subTotal,
      shippingCost: shippingCost,
      tax: tax,
      productsCount: productsCount,
    );
  }

  _Loading loading() {
    return const _Loading();
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function(Cart cart, double subTotal, double shippingCost,
            double tax, int productsCount)
        loaded,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(Cart cart, double subTotal, double shippingCost,
            double tax, int productsCount)?
        loaded,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(Cart cart, double subTotal, double shippingCost,
            double tax, int productsCount)?
        loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function(Cart cart, double subTotal, double shippingCost,
            double tax, int productsCount)
        loaded,
    required TResult Function() loading,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(Cart cart, double subTotal, double shippingCost,
            double tax, int productsCount)?
        loaded,
    TResult Function()? loading,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(Cart cart, double subTotal, double shippingCost,
            double tax, int productsCount)?
        loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CartState {
  const factory _Error(String message) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {Cart cart,
      double subTotal,
      double shippingCost,
      double tax,
      int productsCount});

  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? cart = freezed,
    Object? subTotal = freezed,
    Object? shippingCost = freezed,
    Object? tax = freezed,
    Object? productsCount = freezed,
  }) {
    return _then(_Loaded(
      cart: cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      shippingCost: shippingCost == freezed
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as double,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      productsCount: productsCount == freezed
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $CartCopyWith<$Res> get cart {
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.cart,
      required this.subTotal,
      required this.shippingCost,
      required this.tax,
      required this.productsCount});

  @override
  final Cart cart;
  @override
  final double subTotal;
  @override
  final double shippingCost;
  @override
  final double tax;
  @override
  final int productsCount;

  @override
  String toString() {
    return 'CartState.loaded(cart: $cart, subTotal: $subTotal, shippingCost: $shippingCost, tax: $tax, productsCount: $productsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.cart, cart) &&
            const DeepCollectionEquality().equals(other.subTotal, subTotal) &&
            const DeepCollectionEquality()
                .equals(other.shippingCost, shippingCost) &&
            const DeepCollectionEquality().equals(other.tax, tax) &&
            const DeepCollectionEquality()
                .equals(other.productsCount, productsCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cart),
      const DeepCollectionEquality().hash(subTotal),
      const DeepCollectionEquality().hash(shippingCost),
      const DeepCollectionEquality().hash(tax),
      const DeepCollectionEquality().hash(productsCount));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function(Cart cart, double subTotal, double shippingCost,
            double tax, int productsCount)
        loaded,
    required TResult Function() loading,
  }) {
    return loaded(cart, subTotal, shippingCost, tax, productsCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(Cart cart, double subTotal, double shippingCost,
            double tax, int productsCount)?
        loaded,
    TResult Function()? loading,
  }) {
    return loaded?.call(cart, subTotal, shippingCost, tax, productsCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(Cart cart, double subTotal, double shippingCost,
            double tax, int productsCount)?
        loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cart, subTotal, shippingCost, tax, productsCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CartState {
  const factory _Loaded(
      {required Cart cart,
      required double subTotal,
      required double shippingCost,
      required double tax,
      required int productsCount}) = _$_Loaded;

  Cart get cart;
  double get subTotal;
  double get shippingCost;
  double get tax;
  int get productsCount;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function(Cart cart, double subTotal, double shippingCost,
            double tax, int productsCount)
        loaded,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(Cart cart, double subTotal, double shippingCost,
            double tax, int productsCount)?
        loaded,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(Cart cart, double subTotal, double shippingCost,
            double tax, int productsCount)?
        loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CartState {
  const factory _Loading() = _$_Loading;
}
