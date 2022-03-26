import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:log_pose/log_pose.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/cart/cart.dart';

class CartPage extends StatelessWidget with UiLoggy {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    loggy.debug('CartPage build');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<CartBloc>().add(const CartEvent.refresh());
            },
            child: state.map(
              loading: (_) => const Center(child: Loading()),
              error: (e) => SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Center(child: Text('Error: ${e.message}')),
                ),
              ),
              loaded: (_) => const Padding(
                padding: kPaddingAll,
                child: CartListView(),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const CartSummery(),
    ).unFocus();
  }
}
