part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(EmailInput.pure()) EmailInput emailInput,
    @Default(PasswordInput.pure()) PasswordInput passwordInput,
    @Default(NameInput.pure()) NameInput nameInput,
    @Default(FormzStatus.pure) FormzStatus status,
    String? error,
  }) = _SignUpState;
}
