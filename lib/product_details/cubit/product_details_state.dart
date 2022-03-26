part of 'product_details_cubit.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.loading({
    required Iterable<String> images,
    required int productId,
  }) = _Loading;

  const factory ProductDetailsState.loaded(ProductDetails productDetails) =
      _Loaded;

  const factory ProductDetailsState.error(String message) = _Error;
}
