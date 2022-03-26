import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/cart/cart.dart';
import 'package:senbonzakura/cart/widgets/widgets.dart';
import 'package:senbonzakura/modals/modals.dart';
import 'package:senbonzakura/repositories/repositories.dart';
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

class CartItems extends StatefulWidget {
  const CartItems({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  State<CartItems> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<CartItems> {
  late final GlobalKey<AnimatedListState> _listKey;

  @override
  void initState() {
    _listKey = GlobalKey<AnimatedListState>();
    super.initState();
  }

  @override
  void dispose() {
    _listKey.currentState?.dispose();
    super.dispose();
  }

  void onDelete(CartItem product, int index) {
    context.read<CartBloc>().add(
          CartEvent.removeProductFromACart(
            cart: widget.cart,
            product: product,
          ),
        );

    _listKey.currentState?.removeItem(
      index,
      (context, animation) => FadeTransition(
        opacity: animation,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black87,
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: _listKey,
      itemBuilder: (context, index, animation) {
        final product = widget.cart.items.elementAt(index);

        return Column(
          children: [
            Slidable(
              key: Key(product.id.toString()),
              startActionPane: ActionPane(
                motion: const StretchMotion(),
                children: [
                  // A SlidableAction can have an icon and/or a label.
                  SlidableAction(
                    onPressed: (context) async {
                      final result = await showDialog<bool>(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Are you sure?'),
                          content:
                              const Text('Do you want to remove this item?'),
                          actions: [
                            ElevatedButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: const Text('Yes'),
                            ),
                          ],
                        ),
                      );

                      if (result ?? true) {
                        onDelete(product, index);
                      }
                    },
                    backgroundColor: context.colorScheme.error,
                    foregroundColor: context.colorScheme.onError,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),
              endActionPane: ActionPane(
                motion: const BehindMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      context.showSnackBarMessage(
                        'Sharing is not implemented yet',
                      );
                    },
                    backgroundColor: context.colorScheme.secondary,
                    foregroundColor: context.colorScheme.onSecondary,
                    icon: Icons.share,
                    label: 'Share',
                  ),
                ],
              ),
              child: CartItemCard(
                item: product,
                onQuantityChange: (quantity) {
                  context.read<CartBloc>().add(
                        CartEvent.updateProductQuantity(
                          cart: widget.cart,
                          product: product,
                          quantity: quantity,
                        ),
                      );
                },
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
            ),
            const SizedBox(height: 10),
          ],
        );
      },
      initialItemCount: widget.cart.items.length,
    );
  }
}
