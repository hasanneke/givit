// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsStateImpl _$$ProductsStateImplFromJson(Map<String, dynamic> json) =>
    _$ProductsStateImpl(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductsStateImplToJson(_$ProductsStateImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
