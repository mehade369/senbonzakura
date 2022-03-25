part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(EmailOrPhoneInput.pure()) EmailOrPhoneInput emailOrPhoneInput,
    @Default(PasswordInput.pure()) PasswordInput passwordInput,
    @Default(FormzStatus.pure) FormzStatus status,
    String? error,
  }) = _SignInState;
}
