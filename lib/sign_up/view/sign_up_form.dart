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
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => KScaffold(
        child: Form(
          key: _formKey,
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
              NameFormField(
                controller: _nameController,
                validator: (input) {
                  if (input == null || input.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              separator,
              PasswordFormField(
                controller: _passwordController,
                validator: (input) {
                  if (input == null || input.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              separator,
              BlocBuilder<SignUpCubit, SignUpState>(
                builder: (context, state) {
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: state.status == FormzStatus.submissionInProgress
                        ? const Center(child: CircularProgressIndicator())
                        : SizedBox(
                            width: context.mediaQuery.size.width * 0.5,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context
                                      .read<SignUpCubit>()
                                      .signUpWithEmailAndPassword();
                                }
                              },
                              child: const Text('Sign Up'),
                            ),
                          ),
                  );
                },
              ),
              separator,
            ],
          ),
        ),
      );
}
