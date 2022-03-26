import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Divider(),
        Text(description),
      ],
    );
  }
}
