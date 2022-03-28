import 'package:flutter/material.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/modals/modals.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.item,
    required this.onQuantityChange,
    this.onTap,
  }) : super(key: key);

  final CartItem item;
  final ValueChanged<int> onQuantityChange;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: AspectRatio(
                aspectRatio: 1,
                child: Chobi(
                  imageUrl: item.thumbnailImage,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: context.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: item.price.toString(),
                          style: context.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: '\nShipping Fee: ${item.shippingCost}',
                          style: context.textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              flex: 2,
              child: AspectRatio(
                aspectRatio: 2.1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CartStepper(
                    count: item.quantity,
                    maxCount: item.currentStockCount,
                    onCounterChanged: onQuantityChange,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
