import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/app/app.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Setting'),
        ),
        body: ListView(
          children: [
            ListTile(
              dense: true,
              leading: const Icon(Icons.favorite_outline_rounded),
              title: const Text('Wishlist'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => context.showSnackBarMessage('Wishlist'),
            ),

            // Theme
            const SizedBox(height: 20),
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return ListTile(
                  dense: true,
                  leading: const Icon(Icons.color_lens_outlined),
                  title: const Text('Theme'),
                  trailing: Builder(
                    builder: (context) {
                      switch (state.themeMode) {
                        case ThemeMode.dark:
                          return const Icon(Icons.brightness_2_outlined);
                        case ThemeMode.light:
                          return const Icon(Icons.brightness_7_outlined);
                        case ThemeMode.system:
                          return const Icon(Icons.settings_brightness);
                      }
                    },
                  ),
                  onTap: () {
                    showDialog<void>(
                      context: context,
                      builder: (_) => Dialog(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: FractionallySizedBox(
                            heightFactor: .15,
                            child: FlexThemeModeSwitch(
                              themeMode: state.themeMode,
                              onThemeModeChanged: (themeMode) => context
                                  .read<ThemeCubit>()
                                  .toggleThemeMode(themeMode: themeMode),
                              flexSchemeData:
                                  FlexColor.schemes[AppTheme.scheme]!,
                              title: const Text('Change Theme'),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),

            ListTile(
              dense: true,
              leading: const Icon(Icons.history_outlined),
              title: const Text('History'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => context.showSnackBarMessage('History'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              leading: const Icon(Icons.card_giftcard_outlined),
              title: const Text('Rewards'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => context.showSnackBarMessage('Rewards'),
            ),
            ListTile(
              dense: true,
              leading: const Icon(Icons.attach_money_outlined),
              title: const Text('Credits'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => context.showSnackBarMessage('Credits'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              leading: const Icon(Icons.info_outlined),
              title: const Text('About'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'Senbon Zakura',
                  applicationVersion: '1.0.0',
                );
              },
            ),
            ListTile(
              dense: true,
              leading: const Icon(Icons.edit_calendar_rounded),
              title: const Text('License'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                context.pushMaterialPageRoute(
                  (context) => const LicensePage(),
                );
              },
            ),
            const Divider(),
            ListTile(
              dense: true,
              leading: const Icon(Icons.lock_outline_rounded),
              title: const Text('Privacy Policy'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => context.showSnackBarMessage('Privacy Policy'),
            ),
            ListTile(
              dense: true,
              leading: const Icon(Icons.lock_outline_rounded),
              title: const Text('Terms of Service'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => context.showSnackBarMessage('Terms of Service'),
            ),
          ],
        ),
      );
}
