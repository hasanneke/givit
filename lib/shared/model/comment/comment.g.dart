// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: json['id'] as String? ?? '',
      commenter: Profile.fromJson(json['commenter'] as Map<String, dynamic>),
      text: json['text'] as String,
      hashTag: json['hash_tag'] as String?,
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'commenter': instance.commenter,
      'text': instance.text,
      'hash_tag': instance.hashTag,
    };
