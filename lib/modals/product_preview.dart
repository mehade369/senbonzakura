import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_preview.freezed.dart';
part 'product_preview.g.dart';

@freezed
class ProductPreview with _$ProductPreview {
  const factory ProductPreview({
    @JsonKey(name: r'$id') required String id,
    required String name,
    required String thumbnailImage,
    required int currentStockCount,
    required double price,
    double? discountedPrice,
    bool? isFreeShipping,
    int? totalSoldCount,
    double? rating,
  }) = _ProductPreview;

  factory ProductPreview.fromJson(Map<String, dynamic> json) =>
      _$ProductPreviewFromJson(json);
}
