// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItem _$$_CartItemFromJson(Map<String, dynamic> json) => _$_CartItem(
      id: json['id'] as int,
      name: json['name'] as String,
      thumbnailImage: json['thumbnailImage'] as String,
      tax: (json['tax'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      shippingCost: (json['shippingCost'] as num).toDouble(),
      currentStockCount: json['currentStockCount'] as int,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_CartItemToJson(_$_CartItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnailImage': instance.thumbnailImage,
      'tax': instance.tax,
      'price': instance.price,
      'shippingCost': instance.shippingCost,
      'currentStockCount': instance.currentStockCount,
      'quantity': instance.quantity,
    };
