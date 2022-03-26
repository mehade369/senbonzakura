import 'package:flutter/material.dart';

class KBottomNavBar extends StatelessWidget {
  const KBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.store_mall_directory_outlined),
            ),
            const VerticalDivider(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble_outline),
            ),
          ],
        ),
        OutlinedButton(
          child: const Text('Add to cart'),
          onPressed: () {},
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('BUY NOW'),
        ),
      ],
    );
  }
}
