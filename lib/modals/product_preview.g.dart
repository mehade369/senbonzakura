// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductPreview _$$_ProductPreviewFromJson(Map<String, dynamic> json) =>
    _$_ProductPreview(
      id: json['id'] as int,
      name: json['name'] as String,
      thumbnailImage: json['thumbnailImage'] as String,
      currentStockCount: json['currentStockCount'] as int,
      price: (json['price'] as num).toDouble(),
      discountedPrice: (json['discountedPrice'] as num?)?.toDouble(),
      isFreeShipping: json['isFreeShipping'] as bool?,
      totalSoldCount: json['totalSoldCount'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ProductPreviewToJson(_$_ProductPreview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnailImage': instance.thumbnailImage,
      'currentStockCount': instance.currentStockCount,
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
      'isFreeShipping': instance.isFreeShipping,
      'totalSoldCount': instance.totalSoldCount,
      'rating': instance.rating,
    };
