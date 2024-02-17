// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BuyRequestImpl _$$BuyRequestImplFromJson(Map<String, dynamic> json) =>
    _$BuyRequestImpl(
      id: json['id'] as String? ?? '',
      profile: Profile.fromJson(json['profile'] as Map<String, dynamic>),
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      title: json['title'] as String,
      message: json['message'] as String,
      status: $enumDecodeNullable(_$RequestStatusEnumMap, json['status']) ??
          RequestStatus.waiting,
    );

Map<String, dynamic> _$$BuyRequestImplToJson(_$BuyRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile,
      'product': instance.product,
      'title': instance.title,
      'message': instance.message,
      'status': _$RequestStatusEnumMap[instance.status]!,
    };

const _$RequestStatusEnumMap = {
  RequestStatus.waiting: 'waiting',
  RequestStatus.rejected: 'rejected',
  RequestStatus.accepted: 'accepted',
};
