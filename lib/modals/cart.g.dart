// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cart _$$_CartFromJson(Map<String, dynamic> json) => _$_Cart(
      id: json['id'] as int,
      name: json['name'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => CartItem.fromJson(e as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$_CartToJson(_$_Cart instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'items': instance.items.toList(),
    };
