import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'news_source_entity.freezed.dart';
part 'news_source_entity.g.dart';

@freezed
class NewsSourceEntity with _$NewsSourceEntity{
  const factory NewsSourceEntity({
    String? id,
    String? name,
    String? description,
    String? url,
    String? category,
    String? language,
    String? country
  }) = _NewsSourceEntity;

  factory NewsSourceEntity.fromJson(Map<String,Object?> json) =>
      _$NewsSourceEntityFromJson(json);
}