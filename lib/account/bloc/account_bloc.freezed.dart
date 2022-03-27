// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountEventTearOff {
  const _$AccountEventTearOff();

  _Started started() {
    return const _Started();
  }

  _UpdatedProfileAvatar updatedProfileAvatar({required ImageSource source}) {
    return _UpdatedProfileAvatar(
      source: source,
    );
  }

  _UpdatedProfileName updatedProfileName({required String name}) {
    return _UpdatedProfileName(
      name: name,
    );
  }

  _UpdatedProfileEmail updatedProfileEmail({required String email}) {
    return _UpdatedProfileEmail(
      email: email,
    );
  }

  _UpdatedProfilePassword updatedProfilePassword({required String password}) {
    return _UpdatedProfilePassword(
      password: password,
    );
  }
}

/// @nodoc
const $AccountEvent = _$AccountEventTearOff();

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ImageSource source) updatedProfileAvatar,
    required TResult Function(String name) updatedProfileName,
    required TResult Function(String email) updatedProfileEmail,
    required TResult Function(String password) updatedProfilePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? updatedProfileAvatar,
    TResult Function(String name)? updatedProfileName,
    TResult Function(String email)? updatedProfileEmail,
    TResult Function(String password)? updatedProfilePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? updatedProfileAvatar,
    TResult Function(String name)? updatedProfileName,
    TResult Function(String email)? updatedProfileEmail,
    TResult Function(String password)? updatedProfilePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdatedProfileAvatar value) updatedProfileAvatar,
    required TResult Function(_UpdatedProfileName value) updatedProfileName,
    required TResult Function(_UpdatedProfileEmail value) updatedProfileEmail,
    required TResult Function(_UpdatedProfilePassword value)
        updatedProfilePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdatedProfileAvatar value)? updatedProfileAvatar,
    TResult Function(_UpdatedProfileName value)? updatedProfileName,
    TResult Function(_UpdatedProfileEmail value)? updatedProfileEmail,
    TResult Function(_UpdatedProfilePassword value)? updatedProfilePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdatedProfileAvatar value)? updatedProfileAvatar,
    TResult Function(_UpdatedProfileName value)? updatedProfileName,
    TResult Function(_UpdatedProfileEmail value)? updatedProfileEmail,
    TResult Function(_UpdatedProfilePassword value)? updatedProfilePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res> implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  final AccountEvent _value;
  // ignore: unused_field
  final $Res Function(AccountEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AccountEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ImageSource source) updatedProfileAvatar,
    required TResult Function(String name) updatedProfileName,
    required TResult Function(String email) updatedProfileEmail,
    required TResult Function(String password) updatedProfilePassword,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? updatedProfileAvatar,
    TResult Function(String name)? updatedProfileName,
    TResult Function(String email)? updatedProfileEmail,
    TResult Function(String password)? updatedProfilePassword,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? updatedProfileAvatar,
    TResult Function(String name)? updatedProfileName,
    TResult Function(String email)? updatedProfileEmail,
    TResult Function(String password)? updatedProfilePassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdatedProfileAvatar value) updatedProfileAvatar,
    required TResult Function(_UpdatedProfileName value) updatedProfileName,
    required TResult Function(_UpdatedProfileEmail value) updatedProfileEmail,
    required TResult Function(_UpdatedProfilePassword value)
        updatedProfilePassword,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdatedProfileAvatar value)? updatedProfileAvatar,
    TResult Function(_UpdatedProfileName value)? updatedProfileName,
    TResult Function(_UpdatedProfileEmail value)? updatedProfileEmail,
    TResult Function(_UpdatedProfilePassword value)? updatedProfilePassword,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdatedProfileAvatar value)? updatedProfileAvatar,
    TResult Function(_UpdatedProfileName value)? updatedProfileName,
    TResult Function(_UpdatedProfileEmail value)? updatedProfileEmail,
    TResult Function(_UpdatedProfilePassword value)? updatedProfilePassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AccountEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$UpdatedProfileAvatarCopyWith<$Res> {
  factory _$UpdatedProfileAvatarCopyWith(_UpdatedProfileAvatar value,
          $Res Function(_UpdatedProfileAvatar) then) =
      __$UpdatedProfileAvatarCopyWithImpl<$Res>;
  $Res call({ImageSource source});
}

/// @nodoc
class __$UpdatedProfileAvatarCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res>
    implements _$UpdatedProfileAvatarCopyWith<$Res> {
  __$UpdatedProfileAvatarCopyWithImpl(
      _UpdatedProfileAvatar _value, $Res Function(_UpdatedProfileAvatar) _then)
      : super(_value, (v) => _then(v as _UpdatedProfileAvatar));

  @override
  _UpdatedProfileAvatar get _value => super._value as _UpdatedProfileAvatar;

  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_UpdatedProfileAvatar(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$_UpdatedProfileAvatar implements _UpdatedProfileAvatar {
  const _$_UpdatedProfileAvatar({required this.source});

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'AccountEvent.updatedProfileAvatar(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatedProfileAvatar &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(source));

  @JsonKey(ignore: true)
  @override
  _$UpdatedProfileAvatarCopyWith<_UpdatedProfileAvatar> get copyWith =>
      __$UpdatedProfileAvatarCopyWithImpl<_UpdatedProfileAvatar>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ImageSource source) updatedProfileAvatar,
    required TResult Function(String name) updatedProfileName,
    required TResult Function(String email) updatedProfileEmail,
    required TResult Function(String password) updatedProfilePassword,
  }) {
    return updatedProfileAvatar(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? updatedProfileAvatar,
    TResult Function(String name)? updatedProfileName,
    TResult Function(String email)? updatedProfileEmail,
    TResult Function(String password)? updatedProfilePassword,
  }) {
    return updatedProfileAvatar?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? updatedProfileAvatar,
    TResult Function(String name)? updatedProfileName,
    TResult Function(String email)? updatedProfileEmail,
    TResult Function(String password)? updatedProfilePassword,
    required TResult orElse(),
  }) {
    if (updatedProfileAvatar != null) {
      return updatedProfileAvatar(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdatedProfileAvatar value) updatedProfileAvatar,
    required TResult Function(_UpdatedProfileName value) updatedProfileName,
    required TResult Function(_UpdatedProfileEmail value) updatedProfileEmail,
    required TResult Function(_UpdatedProfilePassword value)
        updatedProfilePassword,
  }) {
    return updatedProfileAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdatedProfileAvatar value)? updatedProfileAvatar,
    TResult Function(_UpdatedProfileName value)? updatedProfileName,
    TResult Function(_UpdatedProfileEmail value)? updatedProfileEmail,
    TResult Function(_UpdatedProfilePassword value)? updatedProfilePassword,
  }) {
    return updatedProfileAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdatedProfileAvatar value)? updatedProfileAvatar,
    TResult Function(_UpdatedProfileName value)? updatedProfileName,
    TResult Function(_UpdatedProfileEmail value)? updatedProfileEmail,
    TResult Function(_UpdatedProfilePassword value)? updatedProfilePassword,
    required TResult orElse(),
  }) {
    if (updatedProfileAvatar != null) {
      return updatedProfileAvatar(this);
    }
    return orElse();
  }
}

abstract class _UpdatedProfileAvatar implements AccountEvent {
  const factory _UpdatedProfileAvatar({required ImageSource source}) =
      _$_UpdatedProfileAvatar;

  ImageSource get source;
  @JsonKey(ignore: true)
  _$UpdatedProfileAvatarCopyWith<_UpdatedProfileAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatedProfileNameCopyWith<$Res> {
  factory _$UpdatedProfileNameCopyWith(
          _UpdatedProfileName value, $Res Function(_UpdatedProfileName) then) =
      __$UpdatedProfileNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$UpdatedProfileNameCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res>
    implements _$UpdatedProfileNameCopyWith<$Res> {
  __$UpdatedProfileNameCopyWithImpl(
      _UpdatedProfileName _value, $Res Function(_UpdatedProfileName) _then)
      : super(_value, (v) => _then(v as _UpdatedProfileName));

  @override
  _UpdatedProfileName get _value => super._value as _UpdatedProfileName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_UpdatedProfileName(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdatedProfileName implements _UpdatedProfileName {
  const _$_UpdatedProfileName({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'AccountEvent.updatedProfileName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatedProfileName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$UpdatedProfileNameCopyWith<_UpdatedProfileName> get copyWith =>
      __$UpdatedProfileNameCopyWithImpl<_UpdatedProfileName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ImageSource source) updatedProfileAvatar,
    required TResult Function(String name) updatedProfileName,
    required TResult Function(String email) updatedProfileEmail,
    required TResult Function(String password) updatedProfilePassword,
  }) {
    return updatedProfileName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? updatedProfileAvatar,
    TResult Function(String name)? updatedProfileName,
    TResult Function(String email)? updatedProfileEmail,
    TResult Function(String password)? updatedProfilePassword,
  }) {
    return updatedProfileName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? updatedProfileAvatar,
    TResult Function(String name)? updatedProfileName,
    TResult Function(String email)? updatedProfileEmail,
    TResult Function(String password)? updatedProfilePassword,
    required TResult orElse(),
  }) {
    if (updatedProfileName != null) {
      return updatedProfileName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdatedProfileAvatar value) updatedProfileAvatar,
    required TResult Function(_UpdatedProfileName value) updatedProfileName,
    required TResult Function(_UpdatedProfileEmail value) updatedProfileEmail,
    required TResult Function(_UpdatedProfilePassword value)
        updatedProfilePassword,
  }) {
    return updatedProfileName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdatedProfileAvatar value)? updatedProfileAvatar,
    TResult Function(_UpdatedProfileName value)? updatedProfileName,
    TResult Function(_UpdatedProfileEmail value)? updatedProfileEmail,
    TResult Function(_UpdatedProfilePassword value)? updatedProfilePassword,
  }) {
    return updatedProfileName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdatedProfileAvatar value)? updatedProfileAvatar,
    TResult Function(_UpdatedProfileName value)? updatedProfileName,
    TResult Function(_UpdatedProfileEmail value)? updatedProfileEmail,
    TResult Function(_UpdatedProfilePassword value)? updatedProfilePassword,
    required TResult orElse(),
  }) {
    if (updatedProfileName != null) {
      return updatedProfileName(this);
    }
    return orElse();
  }
}

abstract class _UpdatedProfileName implements AccountEvent {
  const factory _UpdatedProfileName({required String name}) =
      _$_UpdatedProfileName;

  String get name;
  @JsonKey(ignore: true)
  _$UpdatedProfileNameCopyWith<_UpdatedProfileName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatedProfileEmailCopyWith<$Res> {
  factory _$UpdatedProfileEmailCopyWith(_UpdatedProfileEmail value,
          $Res Function(_UpdatedProfileEmail) then) =
      __$UpdatedProfileEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$UpdatedProfileEmailCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res>
    implements _$UpdatedProfileEmailCopyWith<$Res> {
  __$UpdatedProfileEmailCopyWithImpl(
      _UpdatedProfileEmail _value, $Res Function(_UpdatedProfileEmail) _then)
      : super(_value, (v) => _then(v as _UpdatedProfileEmail));

  @override
  _UpdatedProfileEmail get _value => super._value as _UpdatedProfileEmail;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_UpdatedProfileEmail(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdatedProfileEmail implements _UpdatedProfileEmail {
  const _$_UpdatedProfileEmail({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AccountEvent.updatedProfileEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatedProfileEmail &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$UpdatedProfileEmailCopyWith<_UpdatedProfileEmail> get copyWith =>
      __$UpdatedProfileEmailCopyWithImpl<_UpdatedProfileEmail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ImageSource source) updatedProfileAvatar,
    required TResult Function(String name) updatedProfileName,
    required TResult Function(String email) updatedProfileEmail,
    required TResult Function(String password) updatedProfilePassword,
  }) {
    return updatedProfileEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? updatedProfileAvatar,
    TResult Function(String name)? updatedProfileName,
    TResult Function(String email)? updatedProfileEmail,
    TResult Function(String password)? updatedProfilePassword,
  }) {
    return updatedProfileEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? updatedProfileAvatar,
    TResult Function(String name)? updatedProfileName,
    TResult Function(String email)? updatedProfileEmail,
    TResult Function(String password)? updatedProfilePassword,
    required TResult orElse(),
  }) {
    if (updatedProfileEmail != null) {
      return updatedProfileEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdatedProfileAvatar value) updatedProfileAvatar,
    required TResult Function(_UpdatedProfileName value) updatedProfileName,
    required TResult Function(_UpdatedProfileEmail value) updatedProfileEmail,
    required TResult Function(_UpdatedProfilePassword value)
        updatedProfilePassword,
  }) {
    return updatedProfileEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdatedProfileAvatar value)? updatedProfileAvatar,
    TResult Function(_UpdatedProfileName value)? updatedProfileName,
    TResult Function(_UpdatedProfileEmail value)? updatedProfileEmail,
    TResult Function(_UpdatedProfilePassword value)? updatedProfilePassword,
  }) {
    return updatedProfileEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdatedProfileAvatar value)? updatedProfileAvatar,
    TResult Function(_UpdatedProfileName value)? updatedProfileName,
    TResult Function(_UpdatedProfileEmail value)? updatedProfileEmail,
    TResult Function(_UpdatedProfilePassword value)? updatedProfilePassword,
    required TResult orElse(),
  }) {
    if (updatedProfileEmail != null) {
      return updatedProfileEmail(this);
    }
    return orElse();
  }
}

abstract class _UpdatedProfileEmail implements AccountEvent {
  const factory _UpdatedProfileEmail({required String email}) =
      _$_UpdatedProfileEmail;

  String get email;
  @JsonKey(ignore: true)
  _$UpdatedProfileEmailCopyWith<_UpdatedProfileEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatedProfilePasswordCopyWith<$Res> {
  factory _$UpdatedProfilePasswordCopyWith(_UpdatedProfilePassword value,
          $Res Function(_UpdatedProfilePassword) then) =
      __$UpdatedProfilePasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$UpdatedProfilePasswordCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res>
    implements _$UpdatedProfilePasswordCopyWith<$Res> {
  __$UpdatedProfilePasswordCopyWithImpl(_UpdatedProfilePassword _value,
      $Res Function(_UpdatedProfilePassword) _then)
      : super(_value, (v) => _then(v as _UpdatedProfilePassword));

  @override
  _UpdatedProfilePassword get _value => super._value as _UpdatedProfilePassword;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_UpdatedProfilePassword(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdatedProfilePassword implements _UpdatedProfilePassword {
  const _$_UpdatedProfilePassword({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'AccountEvent.updatedProfilePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatedProfilePassword &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$UpdatedProfilePasswordCopyWith<_UpdatedProfilePassword> get copyWith =>
      __$UpdatedProfilePasswordCopyWithImpl<_UpdatedProfilePassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ImageSource source) updatedProfileAvatar,
    required TResult Function(String name) updatedProfileName,
    required TResult Function(String email) updatedProfileEmail,
    required TResult Function(String password) updatedProfilePassword,
  }) {
    return updatedProfilePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? updatedProfileAvatar,
    TResult Function(String name)? updatedProfileName,
    TResult Function(String email)? updatedProfileEmail,
    TResult Function(String password)? updatedProfilePassword,
  }) {
    return updatedProfilePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? updatedProfileAvatar,
    TResult Function(String name)? updatedProfileName,
    TResult Function(String email)? updatedProfileEmail,
    TResult Function(String password)? updatedProfilePassword,
    required TResult orElse(),
  }) {
    if (updatedProfilePassword != null) {
      return updatedProfilePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdatedProfileAvatar value) updatedProfileAvatar,
    required TResult Function(_UpdatedProfileName value) updatedProfileName,
    required TResult Function(_UpdatedProfileEmail value) updatedProfileEmail,
    required TResult Function(_UpdatedProfilePassword value)
        updatedProfilePassword,
  }) {
    return updatedProfilePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdatedProfileAvatar value)? updatedProfileAvatar,
    TResult Function(_UpdatedProfileName value)? updatedProfileName,
    TResult Function(_UpdatedProfileEmail value)? updatedProfileEmail,
    TResult Function(_UpdatedProfilePassword value)? updatedProfilePassword,
  }) {
    return updatedProfilePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdatedProfileAvatar value)? updatedProfileAvatar,
    TResult Function(_UpdatedProfileName value)? updatedProfileName,
    TResult Function(_UpdatedProfileEmail value)? updatedProfileEmail,
    TResult Function(_UpdatedProfilePassword value)? updatedProfilePassword,
    required TResult orElse(),
  }) {
    if (updatedProfilePassword != null) {
      return updatedProfilePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatedProfilePassword implements AccountEvent {
  const factory _UpdatedProfilePassword({required String password}) =
      _$_UpdatedProfilePassword;

  String get password;
  @JsonKey(ignore: true)
  _$UpdatedProfilePasswordCopyWith<_UpdatedProfilePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AccountStateTearOff {
  const _$AccountStateTearOff();

  _Initial initial(
      {AvatarStatus avatarStatus = AvatarStatus.idle, String? avatarUrl}) {
    return _Initial(
      avatarStatus: avatarStatus,
      avatarUrl: avatarUrl,
    );
  }
}

/// @nodoc
const $AccountState = _$AccountStateTearOff();

/// @nodoc
mixin _$AccountState {
  AvatarStatus get avatarStatus => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AvatarStatus avatarStatus, String? avatarUrl)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AvatarStatus avatarStatus, String? avatarUrl)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AvatarStatus avatarStatus, String? avatarUrl)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res>;
  $Res call({AvatarStatus avatarStatus, String? avatarUrl});
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res> implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  final AccountState _value;
  // ignore: unused_field
  final $Res Function(AccountState) _then;

  @override
  $Res call({
    Object? avatarStatus = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      avatarStatus: avatarStatus == freezed
          ? _value.avatarStatus
          : avatarStatus // ignore: cast_nullable_to_non_nullable
              as AvatarStatus,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $AccountStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({AvatarStatus avatarStatus, String? avatarUrl});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AccountStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? avatarStatus = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_Initial(
      avatarStatus: avatarStatus == freezed
          ? _value.avatarStatus
          : avatarStatus // ignore: cast_nullable_to_non_nullable
              as AvatarStatus,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.avatarStatus = AvatarStatus.idle, this.avatarUrl});

  @JsonKey()
  @override
  final AvatarStatus avatarStatus;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'AccountState.initial(avatarStatus: $avatarStatus, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.avatarStatus, avatarStatus) &&
            const DeepCollectionEquality().equals(other.avatarUrl, avatarUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(avatarStatus),
      const DeepCollectionEquality().hash(avatarUrl));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AvatarStatus avatarStatus, String? avatarUrl)
        initial,
  }) {
    return initial(avatarStatus, avatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AvatarStatus avatarStatus, String? avatarUrl)? initial,
  }) {
    return initial?.call(avatarStatus, avatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AvatarStatus avatarStatus, String? avatarUrl)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(avatarStatus, avatarUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AccountState {
  const factory _Initial({AvatarStatus avatarStatus, String? avatarUrl}) =
      _$_Initial;

  @override
  AvatarStatus get avatarStatus;
  @override
  String? get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
