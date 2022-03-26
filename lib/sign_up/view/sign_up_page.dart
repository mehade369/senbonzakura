import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:milky_way/milky_way.dart';
import 'package:q_form/q_form.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/bootstrap.dart';
import 'package:senbonzakura/sign_in/sign_in.dart';

enum SignUpMethod {
  email,
  phone,
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _phonePrefixController = TextEditingController(text: '+088');

  var _signUpMethod = SignUpMethod.email;

  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KScaffold(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              'Enter your email or phone number',
              style: context.textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            separator,
            ToggleSignUpMethod(
              onChanged: (signUpMethod) {
                setState(() {
                  _signUpMethod = signUpMethod;
                });
              },
              constraints: BoxConstraints(
                maxWidth: context.mediaQuery.size.width * 0.5,
                minHeight: context.mediaQuery.size.height / 20,
              ),
            ),
            separator,
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              switchInCurve: Curves.easeInSine,
              switchOutCurve: Curves.easeOutSine,
              child: _signUpMethod == SignUpMethod.email
                  ? EmailFormField(
                      controller: _emailController,
                      validator: (input) {
                        if (input == null || input.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    )
                  : PhoneFormField(
                      controller: _phoneController,
                      prefixController: _phonePrefixController,
                      validator: (input) {
                        if (input == null || input.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                    ),
            ),
            separator,
            SizedBox(
              width: context.mediaQuery.size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.goNamed(App.signUpForm);
                  }
                },
                child: const Text('Next'),
              ),
            ),
            separator,
            const ORWidget(),
            separator,
            // const SocialButtonRow(),
            separator,
            BottomAction(
              text: 'Already have an account?',
              action: 'Sign in',
              onPressed: () => context.goNamed(App.signIn),
            ),
          ],
        ),
      ),
    ).unFocus();
  }
}

class ToggleSignUpMethod extends StatefulWidget {
  const ToggleSignUpMethod({
    Key? key,
    this.onChanged,
    this.constraints,
  }) : super(key: key);

  final BoxConstraints? constraints;

  final ValueChanged<SignUpMethod>? onChanged;

  @override
  _ToggleSignUpMethodState createState() => _ToggleSignUpMethodState();
}

class _ToggleSignUpMethodState extends State<ToggleSignUpMethod> {
  final _isSelected = [true, false];

  @override
  Widget build(BuildContext context) => ToggleButtons(
        isSelected: _isSelected,
        constraints: widget.constraints,
        onPressed: (index) {
          setState(() {
            for (var buttonIndex = 0;
                buttonIndex < _isSelected.length;
                buttonIndex++) {
              if (buttonIndex == index) {
                _isSelected[buttonIndex] = true;
              } else {
                _isSelected[buttonIndex] = false;
              }
            }
          });
          widget.onChanged?.call(SignUpMethod.values[index]);
        },
        children: const [
          SizedBox(
            width: 100,
            child: Icon(Icons.email),
          ),
          SizedBox(
            width: 100,
            child: Icon(Icons.phone),
          ),
        ],
      );
}
