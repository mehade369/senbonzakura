import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:milky_way/milky_way.dart';
import 'package:q_form/q_form.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/bootstrap.dart';
import 'package:senbonzakura/sign_in/sign_in.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Widget buildWidget(FormzStatus status) {
    switch (status) {
      case FormzStatus.submissionInProgress:
        return const Loading();

      default:
        return SizedBox(
          width: context.mediaQuery.size.width * 0.5,
          child: ElevatedButton(
            onPressed: status.isValidated
                ? context.read<SignInCubit>().signInWithEmailAndPassword
                : null,
            child: const Text('Sign In'),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          context.showSnackBarMessage('Sign in success');
          context.goNamed(App.root);
        }

        if (state.error != null) {
          context.showSnackBarMessage(state.error!);
        }

        if (state.status.isSubmissionFailure) {
          context.showSnackBarMessage('Sign in failed');
        }
      },
      child: KScaffold(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: TopHeading(
                title: 'Sign In',
                subtitle: 'Sign in to your account',
              ),
            ),
            separator,
            BlocBuilder<SignInCubit, SignInState>(
              buildWhen: (previous, current) =>
                  previous.emailOrPhoneInput != current.emailOrPhoneInput,
              builder: (context, state) {
                return EmailORPhoneFormField(
                  onChanged: context.read<SignInCubit>().emailOrPhoneChanged,
                  errorText: state.emailOrPhoneInput.invalid
                      ? state.emailOrPhoneInput.error
                      : null,
                );
              },
            ),
            separator,
            BlocBuilder<SignInCubit, SignInState>(
              buildWhen: (previous, current) =>
                  previous.passwordInput != current.passwordInput,
              builder: (context, state) {
                return PasswordFormField(
                  onChanged: context.read<SignInCubit>().passwordChanged,
                  errorText: state.passwordInput.invalid
                      ? state.passwordInput.error
                      : null,
                );
              },
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  context.goNamed(App.forgetPassword);
                },
                child: const Text('Forgot password?'),
              ),
            ),
            BlocBuilder<SignInCubit, SignInState>(
              buildWhen: (previous, current) =>
                  previous.status != current.status,
              builder: (context, state) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: buildWidget(state.status),
                );
              },
            ),
            separator,
            const ORWidget(),
            separator,
            const SocialButtonRow(),
            separator,
            BottomAction(
              text: "Don't have an account?",
              action: 'Sign up',
              onPressed: () {
                context.goNamed(App.signUp);
              },
            ),
          ],
        ),
      ),
    );
  }
}
