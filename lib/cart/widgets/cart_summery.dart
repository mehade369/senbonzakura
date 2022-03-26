import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/app/app.dart';
import 'package:senbonzakura/cart/cart.dart';

class CartSummery extends StatelessWidget {
  const CartSummery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = context.watch<CartBloc>().state.mapOrNull(
          loaded: (value) => value,
        );

    if (data == null) {
      return const SizedBox.shrink();
    }

    return Material(
      type: MaterialType.canvas,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(kPadding, kPadding, kPadding, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                _PriceRow(
                  leadingText: 'Sub Total (${data.productsCount} products) :',
                  price: data.subTotal,
                ),
                _PriceRow(
                  leadingText: 'Tax :',
                  price: data.tax,
                ),
                _PriceRow(
                  leadingText: 'Shipping :',
                  price: data.shippingCost,
                ),
                const Divider(),
                _PriceRow(
                  leadingText: 'Total :',
                  price: data.subTotal + data.tax + data.shippingCost,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Proceed To Checkout',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PriceRow extends StatelessWidget {
  const _PriceRow({
    Key? key,
    required this.leadingText,
    required this.price,
  }) : super(key: key);

  final String leadingText;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(leadingText),
        Text(
          price.toString(),
          style: context.textTheme.caption,
        ),
      ],
    );
  }
}
