import 'package:flutter/material.dart';
import 'package:q_form/q_form.dart';
import 'package:senbonzakura/bootstrap.dart';
import 'package:senbonzakura/sign_in/sign_in.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => KScaffold(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              EmailORPhoneFormField(
                controller: _controller,
                validator: (input) {
                  if (input == null || input.isEmpty) {
                    return 'Email or Phone Number is required';
                  }

                  return null;
                },
              ),

              separator,
              // Consumer(
              //   builder: (context, ref, _) {
              //     final signInNotifier = ref.watch(signInProvider.notifier);
              //     final signInState = ref.watch(signInProvider);
              //     return AnimatedSwitcher(
              //       duration: const Duration(milliseconds: 300),
              //       child: signInState.status == FormStatus.loading
              //           ? const Center(child: CircularProgressIndicator())
              //           : SizedBox(
              //               width: context.mediaQuery.size.width * 0.5,
              //               child: ElevatedButton(
              //                 onPressed: () {
              //                   if (_formKey.currentState!.validate()) {}
              //                 },
              //                 child: const Text('Reset Password'),
              //               ),
              //             ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      );
}
