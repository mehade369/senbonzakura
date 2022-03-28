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
          context.showSnackBarMessage('Avatar uploaded successfully');
        }

        if (state.avatarStatus == AvatarStatus.failed) {
          context.showSnackBarMessage(
            state.error ?? 'Failed to upload avatar',
          );
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
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const _Section(
              children: [
                _Tile(
                  option: _Option(
                    title: Text('Your Orders'),
                    leading: Icons.shopping_bag_outlined,
                  ),
                ),
                _Tile(
                  option: _Option(
                    title: Text('Notifications'),
                    leading: Icons.notifications_outlined,
                  ),
                ),
                _Tile(
                  option: _Option(
                    title: Text('Wishlist'),
                    leading: Icons.favorite_outline_outlined,
                  ),
                ),
              ],
            ),
            const Divider(),
            const _Section(
              title: 'Rewards & Promotions',
              children: [
                _Tile(
                  option: _Option(
                    title: Text('Rewards'),
                    leading: Icons.card_giftcard_outlined,
                  ),
                ),
                _Tile(
                  option: _Option(
                    title: Text('Promotions'),
                    leading: Icons.local_offer_outlined,
                  ),
                ),
              ],
            ),
            const Divider(),
            const _Section(
              title: 'Help & Support',
              children: [
                _Tile(
                  option: _Option(
                    title: Text('Customer Support'),
                    leading: Icons.question_answer_outlined,
                  ),
                ),
                _Tile(
                  option: _Option(
                    title: Text('Frequently Asked Questions'),
                    leading: Icons.question_mark_outlined,
                  ),
                ),
              ],
            ),
            const Divider(),
            const _Section(
              title: 'Legal & Privacy',
              children: [
                _Tile(
                  option: _Option(
                    title: Text('Privacy Policy'),
                    leading: Icons.lock_outlined,
                  ),
                ),
                _Tile(
                  option: _Option(
                    title: Text('Terms of Service'),
                    leading: Icons.text_snippet_rounded,
                  ),
                ),
              ],
            ),
          ],
        ),
      ).unFocus(),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    Key? key,
    this.title,
    required this.children,
  }) : super(key: key);

  final String? title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme.bodyLarge?.copyWith(
      fontWeight: FontWeight.bold,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(
              title!,
              style: style,
            ),
          ),
        ...children,
      ],
    );
  }
}

class _Option {
  const _Option({
    required this.leading,
    required this.title,
    this.trailing,
  });

  final IconData leading;
  final Widget title;
  final Widget? trailing;
}

class _Tile extends StatelessWidget {
  const _Tile({
    Key? key,
    required this.option,
  }) : super(key: key);

  final _Option option;

  @override
  Widget build(BuildContext context) => ListTile(
        dense: true,
        leading: Icon(option.leading),
        title: option.title,
        trailing: option.trailing,
      );
}
