// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wish _$$_WishFromJson(Map<String, dynamic> json) => _$_Wish(
      id: json['id'] as String,
      title: json['title'] as String,
      imageUrl: json['image_url'] as String?,
      note: json['note'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$$_WishToJson(_$_Wish instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'note': instance.note,
      'price': instance.price,
    };

_$_WishGroup _$$_WishGroupFromJson(Map<String, dynamic> json) => _$_WishGroup(
      id: json['id'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_WishGroupToJson(_$_WishGroup instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
