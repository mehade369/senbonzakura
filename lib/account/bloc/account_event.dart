part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.started() = _Started;

  const factory AccountEvent.updatedProfileAvatar({
    required ImageSource source,
  }) = _UpdatedProfileAvatar;

  const factory AccountEvent.updatedProfileName({
    required String name,
  }) = _UpdatedProfileName;

  const factory AccountEvent.updatedProfileEmail({
    required String email,
  }) = _UpdatedProfileEmail;

  const factory AccountEvent.updatedProfilePassword({
    required String password,
  }) = _UpdatedProfilePassword;
}
