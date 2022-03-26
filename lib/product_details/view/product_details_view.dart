import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/product_details/product_details.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = context
        .watch<ProductDetailsCubit>()
        .state
        .whenOrNull(loaded: (productDetails) => productDetails)!;

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Material(
              child: AspectRatio(
                aspectRatio: 1.5,
                child: Hero(
                  tag: product.id,
                  child: HeroSlider(
                    images: product.images,
                  ),
                ),
              ),
            ),
            Material(
              child: Padding(
                padding: kPaddingAll,
                child: ProductNameBar(
                  product: product,
                ),
              ),
            ),
            Material(
              child: Padding(
                padding: kPaddingAll,
                child: ProductDescription(
                  description: product.description,
                ),
              ),
            ),
            Padding(
              padding: kPaddingAll,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Customer Reviews',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ReviewCard(
                product: product,
              );
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
