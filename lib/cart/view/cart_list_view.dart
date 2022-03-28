import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/cart/cart.dart';
import 'package:senbonzakura/root_navigation_stack/root_navigation_stack.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final data = state.mapOrNull(
          loaded: (value) => value,
        );

        final cart = data!.cart;

        return AnimatedSwitcher(
          duration: kAnimationDuration,
          switchInCurve: Curves.easeIn,
          switchOutCurve: Curves.easeOut,
          child: cart.items.isEmpty
              ? ListView(
                  key: const Key('empty'),
                  shrinkWrap: true,
                  // Empty space to center the children (:_/)
                  padding: const EdgeInsets.symmetric(
                    vertical: 200,
                  ),
                  children: [
                    Text(
                      'Your cart is empty',
                      style: context.textTheme.titleLarge,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed:
                          context.read<RootNavigationStackCubit>().goToHome,
                      child: const Text('Continue shopping'),
                    ),
                  ],
                )
              : CartItems(cart: cart),
        );
      },
    );
  }
}
