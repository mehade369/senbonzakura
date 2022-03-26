import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/app/utils/utils.dart';
import 'package:senbonzakura/product_details/product_details.dart';
import 'package:senbonzakura/root_navigation_stack/root_navigation_stack.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => context.goNamed(App.search),
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
        builder: (context, state) {
          return state.when(
            loading: (images, productId) {
              return ListView(
                children: [
                  Hero(
                    tag: productId,
                    child: Material(
                      child: AspectRatio(
                        aspectRatio: 1.5,
                        child: HeroSlider(
                          images: images,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Loading(),
                ],
              );
            },
            error: Text.new,
            loaded: (product) => const ProductDetailsView(),
          );
        },
      ),
      bottomNavigationBar: const SizedBox(
        height: 55,
        child: KBottomNavBar(),
      ),
    );
  }
}
