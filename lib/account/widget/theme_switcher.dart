import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senbonzakura/app/app.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ThemeCubit>().state.themeMode;

    return ListTile(
      dense: true,
      leading: const Icon(Icons.color_lens_outlined),
      title: const Text('Theme'),
      trailing: Builder(
        builder: (context) {
          switch (themeMode) {
            case ThemeMode.dark:
              return const Icon(Icons.brightness_2_outlined);
            case ThemeMode.light:
              return const Icon(Icons.brightness_7_outlined);
            case ThemeMode.system:
              return const Icon(Icons.settings_brightness);
          }
        },
      ),
      onTap: () => showThemeDialog(context, themeMode),
    );
  }

  Future<void> showThemeDialog(BuildContext context, ThemeMode themeMode) {
    return showDialog<void>(
      context: context,
      builder: (_) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: FractionallySizedBox(
            heightFactor: .15,
            child: FlexThemeModeSwitch(
              themeMode: themeMode,
              onThemeModeChanged: (themeMode) => context
                  .read<ThemeCubit>()
                  .toggleThemeMode(themeMode: themeMode),
              flexSchemeData: FlexColor.schemes[AppTheme.scheme]!,
              title: const Text('Change Theme'),
            ),
          ),
        ),
      ),
    );
  }
}
