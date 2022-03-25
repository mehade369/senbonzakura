import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senbonzakura/sign_in/sign_in.dart';

class SocialButtonRow extends StatelessWidget {
  const SocialButtonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: _SocialMediaButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(
                    content: Text('Coming soon'),
                  ),
                );
            },
            bgColor: const Color(0XFF1877F2),
            child: const FacebookIcon(),
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: _SocialMediaButton(
            onPressed: context.read<SignInCubit>().signInWithGoogle,
            bgColor: Colors.white,
            child: const GoogleIcon(),
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: _SocialMediaButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(
                    content: Text('Coming soon'),
                  ),
                );
            },
            bgColor: Colors.black,
            child: const AppleIcon(),
          ),
        ),
      ],
    );
  }
}

class _SocialMediaButton extends StatelessWidget {
  const _SocialMediaButton({
    Key? key,
    required this.child,
    required this.onPressed,
    required this.bgColor,
  }) : super(key: key);

  final Widget child;

  final VoidCallback onPressed;

  final Color bgColor;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: child,
        ),
      );
}
