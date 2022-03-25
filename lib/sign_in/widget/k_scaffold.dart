import 'package:flutter/material.dart';
import 'package:milky_way/milky_way.dart';

class KScaffold extends StatelessWidget {
  const KScaffold({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 100),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: child,
            ),
          ),
        ),
      ).unFocus();
}
