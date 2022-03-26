// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetails _$$_ProductDetailsFromJson(Map<String, dynamic> json) =>
    _$_ProductDetails(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num).toDouble(),
      totalReviews: json['totalReviews'] as int,
      images: (json['images'] as List<dynamic>).map((e) => e as String),
      price: (json['price'] as num).toDouble(),
      discountedPrice: (json['discountedPrice'] as num).toDouble(),
      tax: (json['tax'] as num).toDouble(),
      shippingCost: (json['shippingCost'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ProductDetailsToJson(_$_ProductDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'rating': instance.rating,
      'totalReviews': instance.totalReviews,
      'images': instance.images.toList(),
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
      'tax': instance.tax,
      'shippingCost': instance.shippingCost,
    };
