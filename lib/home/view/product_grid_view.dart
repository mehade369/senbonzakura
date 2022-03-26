import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:log_pose/log_pose.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/home/home.dart';
import 'package:senbonzakura/modals/modals.dart';
import 'package:senbonzakura/repositories/faker.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class ProductGridView extends StatelessWidget with UiLoggy {
  const ProductGridView({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Iterable<ProductPreview> products;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: kPaddingAll,
      sliver: SliverWaterfallFlow(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final product = products.elementAt(index);
            final _heightX =
                context.mediaQuery.size.height / 4 + Random().nextInt(50);

            return SizedBox(
              height: ((index % 3) + 1) * _heightX >= 300
                  ? 300
                  : ((index % 3) + 1) * _heightX,
              child: ProductCard(
                product: product,
                onTap: () {
                  context.goNamed(
                    App.productDetail,
                    params: {
                      'productId': product.id.toString(),
                    },
                    extra: images,
                  );
                },
              ),
            );
          },
          childCount: products.length,
        ),
        gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
