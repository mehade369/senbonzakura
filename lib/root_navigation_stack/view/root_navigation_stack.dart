// ignore_for_file: avoid_types_on_closure_parameters

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:log_pose/log_pose.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/account/account.dart';
import 'package:senbonzakura/cart/cart.dart';
import 'package:senbonzakura/home/home.dart';
import 'package:senbonzakura/notifications/notifications.dart';
import 'package:senbonzakura/root_navigation_stack/root_navigation_stack.dart';

class RootNavigationStack extends StatelessWidget with UiLoggy {
  const RootNavigationStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    loggy.debug('RootNavigationStack build');

    return Builder(
      builder: (context) {
        final state = context.watch<RootNavigationStackCubit>().state;
        const count = 0;
        // final _count = context.select((CartCubit cubit) {
        //   return cubit.state.maybeMap(
        //     loaded: (value) => value.cart.items.length,
        //     orElse: () => 0,
        //   );
        // });

        return Column(
          children: [
            Expanded(
              child: LazyIndexedStack(
                index: state.index,
                children: const [
                  LazyWidget(child: HomePage()),
                  LazyWidget(child: CartPage()),
                  LazyWidget(child: NotificationsPage()),
                  LazyWidget(child: AccountPage()),
                ],
              ),
            ),
            NavigationBar(
              selectedIndex: state.index,
              onDestinationSelected:
                  context.read<RootNavigationStackCubit>().onDestinationChanged,
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              destinations: [
                const NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                  selectedIcon: Icon(Icons.home),
                ),
                NavigationDestination(
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                  ).badge(count),
                  label: 'Cart',
                  selectedIcon: const Icon(Icons.shopping_cart),
                ),
                const NavigationDestination(
                  icon: Icon(Icons.notifications_outlined),
                  label: 'Notifications',
                  selectedIcon: Icon(Icons.notifications),
                ),
                const NavigationDestination(
                  icon: Icon(Icons.account_circle_outlined),
                  label: 'Account',
                  selectedIcon: Icon(Icons.person),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
