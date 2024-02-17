// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_mark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductMarkImpl _$$ProductMarkImplFromJson(Map<String, dynamic> json) =>
    _$ProductMarkImpl(
      id: json['id'] as String? ?? '',
      userId: json['user_id'] as String,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductMarkImplToJson(_$ProductMarkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'product': instance.product,
    };
