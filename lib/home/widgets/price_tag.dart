import 'package:flutter/material.dart';
import 'package:milky_way/milky_way.dart';

class PriceTag extends StatelessWidget {
  const PriceTag({
    Key? key,
    required this.price,
    required this.discountedPrice,
    this.color,
  }) : super(key: key);

  final double? discountedPrice;
  final double price;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: context.textTheme.titleMedium?.copyWith(
          color: context.colorScheme.secondary,
          fontWeight: FontWeight.bold,
        ),
        children: [
          if (discountedPrice == null) ...[
            TextSpan(
              text: price.toStringAsFixed(2),
            ),
          ],
          if (discountedPrice != null) ...[
            TextSpan(
              text: discountedPrice!.toStringAsFixed(2),
            ),
            const TextSpan(text: ' '),
            TextSpan(
              text: price.toStringAsFixed(2),
              style: context.textTheme.caption?.copyWith(
                color: color,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ]
        ],
      ),
    );
  }
}

// extension ExtensionName on BuildContext {
//   String numberFormat(num value) => NumberFormat.currency(
//         locale: l10n.localeName,
//         symbol: '#',
//       ).format(value);
// }
