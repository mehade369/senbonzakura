import 'package:flutter/material.dart';
import 'package:milky_way/milky_way.dart';

class SliverLoading extends StatelessWidget {
  const SliverLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Center(child: Loading()),
    );
  }
}
