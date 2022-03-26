// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
class _$CartTearOff {
  const _$CartTearOff();

  _Cart call(
      {required int id,
      required String name,
      required Iterable<CartItem> items}) {
    return _Cart(
      id: id,
      name: name,
      items: items,
    );
  }

  Cart fromJson(Map<String, Object?> json) {
    return Cart.fromJson(json);
  }
}

/// @nodoc
const $Cart = _$CartTearOff();

/// @nodoc
mixin _$Cart {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Iterable<CartItem> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res>;
  $Res call({int id, String name, Iterable<CartItem> items});
}

/// @nodoc
class _$CartCopyWithImpl<$Res> implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  final Cart _value;
  // ignore: unused_field
  final $Res Function(Cart) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? items = freezed,
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
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Iterable<CartItem>,
    ));
  }
}

/// @nodoc
abstract class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) then) =
      __$CartCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, Iterable<CartItem> items});
}

/// @nodoc
class __$CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(_Cart _value, $Res Function(_Cart) _then)
      : super(_value, (v) => _then(v as _Cart));

  @override
  _Cart get _value => super._value as _Cart;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? items = freezed,
  }) {
    return _then(_Cart(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Iterable<CartItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cart with DiagnosticableTreeMixin implements _Cart {
  const _$_Cart({required this.id, required this.name, required this.items});

  factory _$_Cart.fromJson(Map<String, dynamic> json) => _$$_CartFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final Iterable<CartItem> items;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Cart(id: $id, name: $name, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Cart'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cart &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$CartCopyWith<_Cart> get copyWith =>
      __$CartCopyWithImpl<_Cart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartToJson(this);
  }
}

abstract class _Cart implements Cart {
  const factory _Cart(
      {required int id,
      required String name,
      required Iterable<CartItem> items}) = _$_Cart;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$_Cart.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  Iterable<CartItem> get items;
  @override
  @JsonKey(ignore: true)
  _$CartCopyWith<_Cart> get copyWith => throw _privateConstructorUsedError;
}
