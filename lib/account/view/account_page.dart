import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:milky_way/milky_way.dart';

import 'package:senbonzakura/account/account.dart';
import 'package:senbonzakura/app/app.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountBloc, AccountState>(
      listener: (context, state) {
        if (state.avatarStatus == AvatarStatus.uploaded) {
          // context.navigator.pop();
        }

        if (state.avatarStatus == AvatarStatus.failed) {
          context.showSnackBarMessage(
            state.error ?? 'Failed to upload avatar',
          );
          // context.navigator.pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Account'),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () => context.goNamed(App.setting),
            ),
          ],
        ),
        body: ListView(
          children: [
            Material(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Avatar(),
                        const SizedBox(width: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mehade',
                              style: context.textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '@mehade369',
                              style: context.textTheme.caption,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Box(
                          label: 'My Cart',
                          value: '20',
                        ),
                        Box(
                          label: 'My Wishlist',
                          value: '7',
                        ),
                        Box(
                          label: 'Watching',
                          value: '12',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ).unFocus(),
    );
  }
}

class Box extends StatelessWidget {
  const Box({
    Key? key,
    required this.value,
    required this.label,
  }) : super(key: key);

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: context.textTheme.bodyLarge,
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: context.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
