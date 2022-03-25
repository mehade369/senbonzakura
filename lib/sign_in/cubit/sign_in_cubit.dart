import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:q_form/q_form.dart';

part 'sign_in_cubit.freezed.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(const SignInState());

  // SignInCubit({
  //   required AuthRepository authRepository,
  //   required UserRepository userRepository,
  // })  : _authRepository = authRepository,
  //       _userRepository = userRepository,
  //       super(const SignInState());

  // final AuthRepository _authRepository;
  // final UserRepository _userRepository;

  void emailOrPhoneChanged(String value) {
    final emailOrPhoneInput = EmailOrPhoneInput(value);
    final status = Formz.validate([emailOrPhoneInput, state.passwordInput]);

    emit(
      state.copyWith(
        emailOrPhoneInput: emailOrPhoneInput,
        status: status,
      ),
    );
  }

  void passwordChanged(String value) {
    final passwordInput = PasswordInput(value);
    final status = Formz.validate([state.emailOrPhoneInput, passwordInput]);

    emit(
      state.copyWith(
        passwordInput: passwordInput,
        status: status,
      ),
    );
  }

  Future<void> signInWithEmailAndPassword() async {
    if (state.status.isValidated) {
      log(state.passwordInput.value);
      log(state.emailOrPhoneInput.value);

      emit(
        state.copyWith(
          status: FormzStatus.submissionInProgress,
        ),
      );

      await Future<void>.delayed(const Duration(seconds: 2));

      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          error: 'Some Server Error',
        ),
      );
    }
  }

  Future<void> signInWithGoogle() async {
    emit(
      state.copyWith(
        status: FormzStatus.submissionInProgress,
      ),
    );

    await Future<void>.delayed(const Duration(seconds: 2));

    emit(state.copyWith(status: FormzStatus.submissionSuccess));
  }
}
