part of 'connectivity_bloc.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState({
    required ConnectivityResult status,
  }) = _ConnectivityState;
}
