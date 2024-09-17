// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsEntityImpl _$$NewsEntityImplFromJson(Map<String, dynamic> json) =>
    _$NewsEntityImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      imageUrl: json['urlToImage'] as String?,
      publishAt: json['publishAt'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$NewsEntityImplToJson(_$NewsEntityImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.imageUrl,
      'publishAt': instance.publishAt,
      'content': instance.content,
    };
