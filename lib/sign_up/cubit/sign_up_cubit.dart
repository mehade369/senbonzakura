import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:q_form/q_form.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const SignUpState());
  final AuthRepository _authRepository;

  // SignUpCubit({
  //   required AuthRepository authRepository,
  //   required UserRepository userRepository,
  // })  : _authRepository = authRepository,
  //       _userRepository = userRepository,
  //       super(const SignUpState());

  // final AuthRepository _authRepository;
  // final UserRepository _userRepository;

  void emailChanged(String value) {
    final emailInput = EmailInput(value);
    final status =
        Formz.validate([emailInput, state.nameInput, state.passwordInput]);

    emit(
      state.copyWith(
        emailInput: emailInput,
        status: status,
      ),
    );
  }

  void phoneChanged(String value) {
    final phoneInput = PhoneInput(value);
    final status =
        Formz.validate([phoneInput, state.nameInput, state.passwordInput]);

    emit(
      state.copyWith(
        phoneInput: phoneInput,
        status: status,
      ),
    );
  }

  void phoneCodeChanged(String value) {
    emit(
      state.copyWith(
        phoneCode: value,
      ),
    );
  }

  void passwordChanged(String value) {
    final passwordInput = PasswordInput(value);
    final status =
        Formz.validate([state.nameInput, state.emailInput, passwordInput]);

    emit(
      state.copyWith(
        passwordInput: passwordInput,
        status: status,
      ),
    );
  }

  void nameChanged(String value) {
    final nameInput = NameInput(value);
    final status =
        Formz.validate([nameInput, state.emailInput, state.passwordInput]);

    emit(
      state.copyWith(
        nameInput: nameInput,
        status: status,
      ),
    );
  }

  Future<void> signUpWithEmailAndPassword() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    // try {
    // final user = _authRepository.signUpWithEmailAndPassword(
    //   email: state.emailInput.value,
    //   password: state.passwordInput.value,
    //   name: state.nameInput.value,
    // );

    // final user = _authRepository.currentUser();

    // if (user != null) {
    //   await _userRepository.createUserIfNotExists(
    //     User(
    //       email: user.email,
    //       name: state.nameInput.value,
    //       photoUrl: user.photoUrl,
    //       uid: user.uid,
    //     ),
    //   );
    // }

    emit(state.copyWith(status: FormzStatus.submissionSuccess));
    // }
    // on AuthException catch (e) {
    //   emit(
    //     state.copyWith(
    //       status: FormzStatus.submissionFailure,
    //       error: e.message,
    //     ),
    //   );
    // }
  }

  Future<void> signInWithGoogle() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    // try {
    // await _authRepository.signInWithGoogle();
    // final user = _authRepository.currentUser();

    // if (user != null) {
    //   await _userRepository.createUserIfNotExists(
    //     User(
    //       email: user.email,
    //       displayName: user.displayName,
    //       photoUrl: user.photoUrl,
    //       uid: user.uid,
    //     ),
    //   );
    // }

    emit(state.copyWith(status: FormzStatus.submissionSuccess));
    // }
    // on AuthException catch (e) {
    //   emit(
    //     state.copyWith(
    //       status: FormzStatus.submissionFailure,
    //       error: e.message,
    //     ),
    //   );
    // }
  }
}
