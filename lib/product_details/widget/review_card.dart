import 'dart:math';

import 'package:flutter/material.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/modals/modals.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductDetails product;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: kPaddingAll,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Customer Name',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      RatingBar(
                        rating: Random().nextDouble() * 5,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Without macro-vertical CAE, you will lack synergies. Imagine a combination of ActionScript and PHP. Imagine a combination of ActionScript and PHP. We understand that it is better to streamline ',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
