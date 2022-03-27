import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(const _Initial()) {
    on<_UpdatedProfileAvatar>((event, emit) async {
      emit(
        state.copyWith(
          avatarStatus: AvatarStatus.uploading,
        ),
      );

      await Future<void>.delayed(const Duration(seconds: 2));

      emit(
        state.copyWith(
          avatarStatus: AvatarStatus.uploaded,
          avatarUrl: 'https://w0.peakpx.com/wallpaper/591/195/HD-wallpaper-masked-anime-boy-anime-mask-ghost-ivan.jpg',
        ),
      );
    });
  }
}
