// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatedPostImpl _$$CreatedPostImplFromJson(Map<String, dynamic> json) =>
    _$CreatedPostImpl(
      creatorName: json['creatorName'] as String,
      topic: json['topic'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$CreatedPostImplToJson(_$CreatedPostImpl instance) =>
    <String, dynamic>{
      'creatorName': instance.creatorName,
      'topic': instance.topic,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };
