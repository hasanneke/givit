// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteImpl _$$FavoriteImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteImpl(
      userId: json['userId'] as String,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FavoriteImplToJson(_$FavoriteImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'product': instance.product,
    };
