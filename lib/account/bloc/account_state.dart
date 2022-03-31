part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial({
    @Default(AvatarStatus.idle) AvatarStatus avatarStatus,
    String? avatarUrl,
    String? error,
  }) = _Initial;
}

enum AvatarStatus {
  idle,
  uploading,
  uploaded,
  failed,
}
