// ignore_for_file: no_default_cases

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:milky_way/milky_way.dart';
import 'package:q_form/q_form.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/bootstrap.dart';
import 'package:senbonzakura/forget_password/forget_password.dart';
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
      case FormzStatus.submissionFailure:
        return SignButton(
          onPressed: status.isValidated
              ? context.read<SignInCubit>().signInWithEmailAndPassword
              : null,
          child: const Text('Failed!!'),
        );

      default:
        return SignButton(
          onPressed: status.isValidated
              ? context.read<SignInCubit>().signInWithEmailAndPassword
              : null,
          child: const Text('Sign In'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          context.showSnackBarMessage('Sign in success');
          context.goNamed(RouteName.root);
        }

        if (state.status.isSubmissionFailure) {
          context.showSnackBarMessage(state.error ?? 'Sign In Failed!');
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
            const EmailORPhone(),
            separator,
            const Password(),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // context.goNamed(RouteName.forgetPassword);
                  context.navigator.push<void>(
                    MaterialPageRoute<void>(
                      builder: (_) => BlocProvider.value(
                        value: context.read<SignInCubit>(),
                        child: const ForgetPasswordPage(),
                      ),
                    ),
                  );
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
                context.goNamed(RouteName.signUp);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Password extends StatefulWidget {
  const Password({
    Key? key,
  }) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _passwordController.addListener(() {
      context.read<SignInCubit>().passwordChanged(_passwordController.text);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final passwordInput =
        context.select((SignInCubit cubit) => cubit.state.passwordInput);

    return PasswordFormField(
      controller: _passwordController,
      // onChanged: context.read<SignInCubit>().passwordChanged,
      errorText: passwordInput.invalid ? passwordInput.error : null,
    );
  }
}

class EmailORPhone extends StatefulWidget {
  const EmailORPhone({
    Key? key,
  }) : super(key: key);

  @override
  State<EmailORPhone> createState() => _EmailORPhoneState();
}

class _EmailORPhoneState extends State<EmailORPhone> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _emailController.addListener(() {
      context.read<SignInCubit>().emailOrPhoneChanged(_emailController.text);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final emailOrPhoneInput =
        context.select((SignInCubit cubit) => cubit.state.emailOrPhoneInput);

    return EmailORPhoneFormField(
      controller: _emailController,
      // onChanged: context.read<SignInCubit>().emailOrPhoneChanged,
      errorText: emailOrPhoneInput.invalid ? emailOrPhoneInput.error : null,
    );
  }
}
