import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:milky_way/milky_way.dart';
import 'package:q_form/q_form.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/bootstrap.dart';
import 'package:senbonzakura/sign_in/sign_in.dart';
import 'package:senbonzakura/sign_up/sign_up.dart';

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
  var _signUpMethod = SignUpMethod.email;

  void onToggleChanged(SignUpMethod signUpMethod) {
    setState(() {
      _signUpMethod = signUpMethod;
    });
  }

  @override
  Widget build(BuildContext context) {
    return KScaffold(
      child: Column(
        children: [
          Text(
            'Enter your email or phone number',
            style: context.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          separator,
          ToggleSignUpMethod(
            onChanged: onToggleChanged,
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
                ? const Email()
                : const Phone(),
          ),
          separator,
          SizedBox(
            width: context.mediaQuery.size.width * 0.5,
            child: ElevatedButton(
              onPressed: () {},
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
    ).unFocus();
  }
}

class Email extends StatefulWidget {
  const Email({
    Key? key,
  }) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

    @override
    void initState() {
      _emailController.addListener(() {
        context.read<SignUpCubit>().emailChanged(_emailController.text);
      });
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    final emailInput =
        context.select((SignUpCubit cubit) => cubit.state.emailInput);

    return EmailFormField(
      controller: _emailController,
      validator: emailValidator,
      errorText: emailInput.invalid ? emailInput.error : null,
      // onChanged: context.read<SignUpCubit>().emailChanged,
    );
  }
}

class Phone extends StatefulWidget {
  const Phone({
    Key? key,
  }) : super(key: key);

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  final _phoneController = TextEditingController();
  final _phonePrefixController = TextEditingController(text: '+088');

  @override
  void dispose() {
    _phoneController.dispose();
    _phonePrefixController.dispose();
    super.dispose();
  }

    @override
    void initState() {
      _phoneController.addListener(() {
        context.read<SignUpCubit>().phoneChanged(_phoneController.text);
      });
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    final phoneInput =
        context.select((SignUpCubit cubit) => cubit.state.phoneInput);

    return PhoneFormField(
      controller: _phoneController,
      prefixController: _phonePrefixController,
      validator: phoneValidator,
      errorText: phoneInput.invalid ? phoneInput.error : null,
    );
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
