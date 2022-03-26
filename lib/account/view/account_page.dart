import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:senbonzakura/app/utils/utils.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Account'),
          actions: [
            IconButton(
              icon: const Icon(Icons.perm_identity_outlined),
              onPressed: () {
                context.goNamed(App.signIn);
              },
            ),
          ],
        ),
      );
}
