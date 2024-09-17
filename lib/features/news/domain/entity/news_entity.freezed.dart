// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsEntity _$NewsEntityFromJson(Map<String, dynamic> json) {
  return _NewsEntity.fromJson(json);
}

/// @nodoc
mixin _$NewsEntity {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'urlToImage')
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get publishAt => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  /// Serializes this NewsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsEntityCopyWith<NewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEntityCopyWith<$Res> {
  factory $NewsEntityCopyWith(
          NewsEntity value, $Res Function(NewsEntity) then) =
      _$NewsEntityCopyWithImpl<$Res, NewsEntity>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? url,
      @JsonKey(name: 'urlToImage') String? imageUrl,
      String? publishAt,
      String? content});
}

/// @nodoc
class _$NewsEntityCopyWithImpl<$Res, $Val extends NewsEntity>
    implements $NewsEntityCopyWith<$Res> {
  _$NewsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? publishAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publishAt: freezed == publishAt
          ? _value.publishAt
          : publishAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsEntityImplCopyWith<$Res>
    implements $NewsEntityCopyWith<$Res> {
  factory _$$NewsEntityImplCopyWith(
          _$NewsEntityImpl value, $Res Function(_$NewsEntityImpl) then) =
      __$$NewsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? url,
      @JsonKey(name: 'urlToImage') String? imageUrl,
      String? publishAt,
      String? content});
}

/// @nodoc
class __$$NewsEntityImplCopyWithImpl<$Res>
    extends _$NewsEntityCopyWithImpl<$Res, _$NewsEntityImpl>
    implements _$$NewsEntityImplCopyWith<$Res> {
  __$$NewsEntityImplCopyWithImpl(
      _$NewsEntityImpl _value, $Res Function(_$NewsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? publishAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_$NewsEntityImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publishAt: freezed == publishAt
          ? _value.publishAt
          : publishAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsEntityImpl with DiagnosticableTreeMixin implements _NewsEntity {
  const _$NewsEntityImpl(
      {this.title,
      this.description,
      this.url,
      @JsonKey(name: 'urlToImage') this.imageUrl,
      this.publishAt,
      this.content});

  factory _$NewsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsEntityImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  @JsonKey(name: 'urlToImage')
  final String? imageUrl;
  @override
  final String? publishAt;
  @override
  final String? content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsEntity(title: $title, description: $description, url: $url, imageUrl: $imageUrl, publishAt: $publishAt, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsEntity'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('publishAt', publishAt))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.publishAt, publishAt) ||
                other.publishAt == publishAt) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, url, imageUrl, publishAt, content);

  /// Create a copy of NewsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsEntityImplCopyWith<_$NewsEntityImpl> get copyWith =>
      __$$NewsEntityImplCopyWithImpl<_$NewsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsEntityImplToJson(
      this,
    );
  }
}

abstract class _NewsEntity implements NewsEntity {
  const factory _NewsEntity(
      {final String? title,
      final String? description,
      final String? url,
      @JsonKey(name: 'urlToImage') final String? imageUrl,
      final String? publishAt,
      final String? content}) = _$NewsEntityImpl;

  factory _NewsEntity.fromJson(Map<String, dynamic> json) =
      _$NewsEntityImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get url;
  @override
  @JsonKey(name: 'urlToImage')
  String? get imageUrl;
  @override
  String? get publishAt;
  @override
  String? get content;

  /// Create a copy of NewsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsEntityImplCopyWith<_$NewsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
