import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/account/account.dart';
import 'package:senbonzakura/app/app.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ThemeCubit>().state;

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
              icon: const Icon(Icons.exit_to_app_outlined),
              onPressed: () => context.goNamed(App.signIn),
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
                    const Avatar(),
                    const SizedBox(height: 10),
                    Text(
                      'Mehade',
                      style: context.textTheme.bodyLarge,
                    ),
                    Text(
                      '@mehade369',
                      style: context.textTheme.caption,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.favorite_outline_rounded),
              title: const Text('Wishlist'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => context.showSnackBarMessage('Wishlist'),
            ),

            // Theme
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.color_lens_outlined),
              title: const Text('Theme'),
              trailing: const Icon(Icons.brightness_high),
              onTap: () {
                showDialog<void>(
                  context: context,
                  builder: (_) => SizedBox(
                    width: 300,
                    child: Dialog(
                      alignment: Alignment.center,
                      child: Material(
                        child: Center(
                          child: FlexThemeModeSwitch(
                            themeMode: state.themeMode,
                            onThemeModeChanged: (themeMode) => context
                                .read<ThemeCubit>()
                                .toggleThemeMode(themeMode: themeMode),
                            flexSchemeData: FlexColor.schemes[AppTheme.scheme]!,
                            title: const Text('Change Theme'),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.history_outlined),
              title: const Text('History'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => context.showSnackBarMessage('History'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.card_giftcard_outlined),
              title: const Text('Rewards'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => context.showSnackBarMessage('Rewards'),
            ),
            ListTile(
              leading: const Icon(Icons.attach_money_outlined),
              title: const Text('Credits'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => context.showSnackBarMessage('Credits'),
            ),
            const Divider(),
            ListTile(
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
              leading: const Icon(Icons.lock_outline_rounded),
              title: const Text('Privacy Policy'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => context.showSnackBarMessage('Privacy Policy'),
            ),
            ListTile(
              leading: const Icon(Icons.lock_outline_rounded),
              title: const Text('Terms of Service'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => context.showSnackBarMessage('Terms of Service'),
            ),
          ],
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatarUlr =
        context.select((AccountBloc bloc) => bloc.state.avatarUrl);

    final avatarStatus =
        context.select((AccountBloc bloc) => bloc.state.avatarStatus);

    return InkWell(
      onTap: () {
        showBottomSheet<void>(
          context: context,
          builder: (_) => Container(
            height: 400,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 10),
                Container(
                  width: context.mediaQuery.size.width / 3,
                  height: 5,
                  decoration: BoxDecoration(
                    color: context.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Change Avatar',
                  style: context.textTheme.bodyLarge,
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        leading: const Icon(Icons.camera_alt_outlined),
                        title: const Text('Camera'),
                        onTap: () {
                          context.read<AccountBloc>().add(
                                const AccountEvent.updatedProfileAvatar(
                                  source: ImageSource.camera,
                                ),
                              );
                          context.navigator.pop();
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.photo_library_outlined),
                        title: const Text('Gallery'),
                        onTap: () {
                          context.read<AccountBloc>().add(
                                const AccountEvent.updatedProfileAvatar(
                                  source: ImageSource.gallery,
                                ),
                              );
                          context.navigator.pop();
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.add_photo_alternate_outlined),
                        title: const Text('Random'),
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      borderRadius: BorderRadius.circular(100),
      child: Container(
        width: context.mediaQuery.size.width / 3,
        height: context.mediaQuery.size.width / 3,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            OctoImage.fromSet(
              image: CachedNetworkImageProvider(
                avatarUlr ?? 'https://picsum.photos/200/300',
              ),
              fit: BoxFit.cover,
              octoSet: OctoSet.circleAvatar(
                backgroundColor: Colors.transparent,
                text: avatarStatus == AvatarStatus.uploading
                    ? Loading()
                    : const Icon(
                        Icons.person_pin,
                        color: Colors.white,
                        size: 70,
                      ),
              ),
            ),
            // ),
            if (avatarStatus == AvatarStatus.uploading)
              const Positioned(
                height: 50,
                width: 50,
                child: Loading(),
              ),
          ],
        ),
      ),
    );
  }
}
