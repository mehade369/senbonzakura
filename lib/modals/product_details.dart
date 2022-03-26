import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details.freezed.dart';
part 'product_details.g.dart';

@freezed
class ProductDetails with _$ProductDetails {
  const factory ProductDetails({
    required int id,
    required String name,
    required String description,
    required double rating,
    required int totalReviews,
    required Iterable<String> images,
    required double price,
    required double discountedPrice,
    required double tax,
    required double shippingCost,
  }) = _ProductDetails;

  factory ProductDetails.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsFromJson(json);
}
