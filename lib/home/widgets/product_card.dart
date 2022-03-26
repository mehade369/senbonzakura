import 'package:flutter/material.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/home/home.dart';
import 'package:senbonzakura/modals/modals.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;
  final ProductPreview product;

  static const _bgColor = Colors.black54;
  static const _onBGColor = Color(0xFFF5F5F5);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: product.id,
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 4,
        child: InkWrapper(
          onTap: onTap,
          child: InkWell(
            onTap: onTap,
            child: GridTile(
              footer: Container(
                color: _bgColor,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                height: 68,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      product.name,
                      style: context.textTheme.titleSmall?.copyWith(
                        color: _onBGColor,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      softWrap: false,
                    ),
                    const SizedBox(height: 4),
                    PriceTag(
                      price: product.price,
                      discountedPrice: product.discountedPrice,
                      color: _onBGColor,
                    ),
                  ],
                ),
              ),
              child: Chobi(imageUrl: product.thumbnailImage),
            ),
          ),
        ),
      ),
    );
  }
}

class InkWrapper extends StatelessWidget {
  const InkWrapper({
    Key? key,
    this.splashColor,
    required this.child,
    this.onTap,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onTap;
  final Color? splashColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        child,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: splashColor,
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}
