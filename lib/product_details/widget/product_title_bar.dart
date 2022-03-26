import 'package:flutter/material.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/home/home.dart';
import 'package:senbonzakura/modals/modals.dart';

class ProductNameBar extends StatelessWidget {
  const ProductNameBar({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductDetails product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                product.name,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PriceTag(
              price: product.price,
              discountedPrice: product.discountedPrice,
            ),
            Row(
              children: [
                RatingBar(
                  rating: product.rating,
                ),
                const SizedBox(width: 8),
                Text(
                  '(${product.totalReviews})',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
