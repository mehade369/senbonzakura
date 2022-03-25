// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {EmailOrPhoneInput emailOrPhoneInput = const EmailOrPhoneInput.pure(),
      PasswordInput passwordInput = const PasswordInput.pure(),
      FormzStatus status = FormzStatus.pure,
      String? error}) {
    return _SignInState(
      emailOrPhoneInput: emailOrPhoneInput,
      passwordInput: passwordInput,
      status: status,
      error: error,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  EmailOrPhoneInput get emailOrPhoneInput => throw _privateConstructorUsedError;
  PasswordInput get passwordInput => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {EmailOrPhoneInput emailOrPhoneInput,
      PasswordInput passwordInput,
      FormzStatus status,
      String? error});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? emailOrPhoneInput = freezed,
    Object? passwordInput = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      emailOrPhoneInput: emailOrPhoneInput == freezed
          ? _value.emailOrPhoneInput
          : emailOrPhoneInput // ignore: cast_nullable_to_non_nullable
              as EmailOrPhoneInput,
      passwordInput: passwordInput == freezed
          ? _value.passwordInput
          : passwordInput // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailOrPhoneInput emailOrPhoneInput,
      PasswordInput passwordInput,
      FormzStatus status,
      String? error});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object? emailOrPhoneInput = freezed,
    Object? passwordInput = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_SignInState(
      emailOrPhoneInput: emailOrPhoneInput == freezed
          ? _value.emailOrPhoneInput
          : emailOrPhoneInput // ignore: cast_nullable_to_non_nullable
              as EmailOrPhoneInput,
      passwordInput: passwordInput == freezed
          ? _value.passwordInput
          : passwordInput // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SignInState with DiagnosticableTreeMixin implements _SignInState {
  const _$_SignInState(
      {this.emailOrPhoneInput = const EmailOrPhoneInput.pure(),
      this.passwordInput = const PasswordInput.pure(),
      this.status = FormzStatus.pure,
      this.error});

  @JsonKey()
  @override
  final EmailOrPhoneInput emailOrPhoneInput;
  @JsonKey()
  @override
  final PasswordInput passwordInput;
  @JsonKey()
  @override
  final FormzStatus status;
  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState(emailOrPhoneInput: $emailOrPhoneInput, passwordInput: $passwordInput, status: $status, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState'))
      ..add(DiagnosticsProperty('emailOrPhoneInput', emailOrPhoneInput))
      ..add(DiagnosticsProperty('passwordInput', passwordInput))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            const DeepCollectionEquality()
                .equals(other.emailOrPhoneInput, emailOrPhoneInput) &&
            const DeepCollectionEquality()
                .equals(other.passwordInput, passwordInput) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailOrPhoneInput),
      const DeepCollectionEquality().hash(passwordInput),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {EmailOrPhoneInput emailOrPhoneInput,
      PasswordInput passwordInput,
      FormzStatus status,
      String? error}) = _$_SignInState;

  @override
  EmailOrPhoneInput get emailOrPhoneInput;
  @override
  PasswordInput get passwordInput;
  @override
  FormzStatus get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
