import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:senbonzakura/app/app.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ThemeCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app_outlined),
            onPressed: () => context.goNamed(App.signIn),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            FlexThemeModeSwitch(
              themeMode: state.themeMode,
              onThemeModeChanged: (themeMode) => context
                  .read<ThemeCubit>()
                  .toggleThemeMode(themeMode: themeMode),
              flexSchemeData: FlexColor.schemes[AppTheme.scheme]!,
              title: const Text('Change Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
