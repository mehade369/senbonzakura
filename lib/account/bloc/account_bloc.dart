import 'package:appwrite/appwrite.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:senbonzakura/repositories/storage_repository.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc({
    required StorageRepository storageRepository,
  }) : super(const _Initial()) {
    on<_UpdatedProfileAvatar>((event, emit) async {
      emit(
        state.copyWith(
          avatarStatus: AvatarStatus.uploading,
        ),
      );

      final pickedFile = await ImagePicker().pickImage(source: event.source);

      if (pickedFile == null) {
        return emit(
          state.copyWith(
            avatarStatus: AvatarStatus.idle,
          ),
        );
      }

      try {
        await storageRepository.createFile(
          path: pickedFile.path,
          fileName: pickedFile.name,
        );

        emit(
          state.copyWith(
            avatarStatus: AvatarStatus.uploaded,
          ),
        );
      } on AppwriteException catch (e) {
        emit(
          state.copyWith(
            avatarStatus: AvatarStatus.failed,
            error: e.message,
          ),
        );
      }
    });
  }
}
