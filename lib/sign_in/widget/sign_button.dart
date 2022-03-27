import 'package:flutter/material.dart';
import 'package:milky_way/milky_way.dart';

class SignButton extends StatelessWidget {
  const SignButton({
    Key? key,
    this.onPressed,
    required this.child,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.mediaQuery.size.width * 0.5,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
