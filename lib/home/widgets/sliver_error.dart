import 'package:flutter/material.dart';
import 'package:milky_way/milky_way.dart';

class SliverError extends StatelessWidget {
  const SliverError({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverToBoxAdapter(
        child: Text(message).alignment(Alignment.center),
      ),
    );
  }
}
