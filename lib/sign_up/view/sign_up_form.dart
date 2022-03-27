import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milky_way/milky_way.dart';
import 'package:q_form/q_form.dart';
import 'package:senbonzakura/bootstrap.dart';
import 'package:senbonzakura/sign_in/sign_in.dart';
import 'package:senbonzakura/sign_up/sign_up.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) => KScaffold(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: TopHeading(
                title: 'Sign Up',
                subtitle: 'Create a new account',
              ),
            ),
            separator,
            const Name(),
            separator,
            const Password(),
            separator,
            SignUpButton(),
            separator,
          ],
        ),
      );
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = context.select((SignUpCubit cubit) => cubit.state.status);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: status == FormzStatus.submissionInProgress
          ? const Center(child: CircularProgressIndicator())
          : SizedBox(
              width: context.mediaQuery.size.width * 0.5,
              child: ElevatedButton(
                onPressed: status.isValidated ? () {} : null,
                child: const Text('Sign Up'),
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
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _passwordController = TextEditingController();
    _passwordController.addListener(() {
      context.read<SignUpCubit>().passwordChanged(_passwordController.text);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final passwordInput =
        context.select((SignUpCubit cubit) => cubit.state.passwordInput);

    return PasswordFormField(
      controller: _passwordController,
      errorText: passwordInput.invalid ? 'Password is required' : null,
    );
  }
}

class Name extends StatefulWidget {
  const Name({
    Key? key,
  }) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  late final TextEditingController _nameController;

  @override
  void initState() {
    _nameController = TextEditingController();

    _nameController.addListener(() {
      context.read<SignUpCubit>().nameChanged(_nameController.text);
    });

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final nameInput =
        context.select((SignUpCubit cubit) => cubit.state.nameInput);

    return NameFormField(
      controller: _nameController,
      errorText: nameInput.invalid ? nameInput.error : null,
    );
  }
}
