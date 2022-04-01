import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:milky_way/milky_way.dart';
import 'package:senbonzakura/account/account.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    this.height = 100,
    this.width = 100,
  }) : super(key: key);

  final double height;
  final double width;

  void showSourceOptions(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (_) => Column(
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
          ListTile(
            dense: true,
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
            dense: true,
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
            dense: true,
            leading: const Icon(Icons.add_photo_alternate_outlined),
            title: const Text('Random'),
            onTap: () {},
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final avatarUlr =
        context.select((AccountBloc bloc) => bloc.state.avatarUrl);

    final avatarStatus =
        context.select((AccountBloc bloc) => bloc.state.avatarStatus);

    return InkWell(
      onTap: () => showSourceOptions(context),
      borderRadius: BorderRadius.circular(170),
      child: Container(
        width: height,
        height: width,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (avatarUlr == null)
              const CircleAvatar(
                radius: 40,
                child: Icon(
                  Icons.person_outline,
                  size: 50,
                ),
              ),
            if (avatarUlr != null)
              OctoImage.fromSet(
                image: CachedNetworkImageProvider(
                  avatarUlr,
                ),
                fit: BoxFit.cover,
                octoSet: OctoSet.circleAvatar(
                  backgroundColor: context.colorScheme.primary,
                  text: avatarStatus == AvatarStatus.uploading
                      ? const Loading()
                      : Icon(
                          Icons.person_outline,
                          size: 50,
                          color: context.theme.colorScheme.onPrimary,
                        ),
                ),
              ),
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
