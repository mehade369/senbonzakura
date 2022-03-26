part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;

  const factory HomeState.success({
    required Iterable<ProductPreview> products,
  }) = _Success;

  const factory HomeState.error(
    String message,
  ) = _Error;
}
