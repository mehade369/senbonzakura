import 'package:flutter/material.dart';
import 'package:milky_way/milky_way.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  static const _settings = <_Setting>[
    _Setting(
      title: 'Profile',
      icon: Icons.person,
    ),
    _Setting(
      title: 'Currency & Language',
      icon: Icons.language,
    ),
    _Setting(
      title: 'Notification Settings',
      icon: Icons.notifications,
    ),
    _Setting(
      title: 'Email Setting',
      icon: Icons.email,
    ),
    _Setting(
      title: 'Manage Addresses',
      icon: Icons.home,
    ),
    _Setting(
      title: 'Manage Payments',
      icon: Icons.payment,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: ListView(
        children: [
          ..._settings.map(
            (setting) => _SettingTile(
              setting: setting,
              onTap: () {
                context.showSnackBarMessage('Coming soon...');
              },
            ),
          ),
          _SettingTile(
            setting: const _Setting(
              title: 'Logout',
              icon: Icons.exit_to_app,
            ),
            onTap: () {
              context.showSnackBarMessage('Logout');
            },
          ),
        ],
      ),
    );
  }
}

/// A modal that helps us to organize our settings page's setting options.
class _Setting {
  const _Setting({
    required this.title,
    required this.icon,
  });

  final IconData icon;
  final String title;
}

class _SettingTile extends StatelessWidget {
  const _SettingTile({
    Key? key,
    required this.setting,
    this.trailing,
    this.onTap,
  }) : super(key: key);

  final _Setting setting;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          ListTile(
            dense: true,
            leading: Icon(setting.icon),
            title: Text(setting.title),
            trailing: trailing,
          ),
          const Divider(height: 4),
        ],
      ),
    );
  }
}
