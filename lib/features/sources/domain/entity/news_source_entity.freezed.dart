// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_source_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsSourceEntity _$NewsSourceEntityFromJson(Map<String, dynamic> json) {
  return _NewsSourceEntity.fromJson(json);
}

/// @nodoc
mixin _$NewsSourceEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  /// Serializes this NewsSourceEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsSourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsSourceEntityCopyWith<NewsSourceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsSourceEntityCopyWith<$Res> {
  factory $NewsSourceEntityCopyWith(
          NewsSourceEntity value, $Res Function(NewsSourceEntity) then) =
      _$NewsSourceEntityCopyWithImpl<$Res, NewsSourceEntity>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? url,
      String? category,
      String? language,
      String? country});
}

/// @nodoc
class _$NewsSourceEntityCopyWithImpl<$Res, $Val extends NewsSourceEntity>
    implements $NewsSourceEntityCopyWith<$Res> {
  _$NewsSourceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsSourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? category = freezed,
    Object? language = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsSourceEntityImplCopyWith<$Res>
    implements $NewsSourceEntityCopyWith<$Res> {
  factory _$$NewsSourceEntityImplCopyWith(_$NewsSourceEntityImpl value,
          $Res Function(_$NewsSourceEntityImpl) then) =
      __$$NewsSourceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? url,
      String? category,
      String? language,
      String? country});
}

/// @nodoc
class __$$NewsSourceEntityImplCopyWithImpl<$Res>
    extends _$NewsSourceEntityCopyWithImpl<$Res, _$NewsSourceEntityImpl>
    implements _$$NewsSourceEntityImplCopyWith<$Res> {
  __$$NewsSourceEntityImplCopyWithImpl(_$NewsSourceEntityImpl _value,
      $Res Function(_$NewsSourceEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsSourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? category = freezed,
    Object? language = freezed,
    Object? country = freezed,
  }) {
    return _then(_$NewsSourceEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsSourceEntityImpl
    with DiagnosticableTreeMixin
    implements _NewsSourceEntity {
  const _$NewsSourceEntityImpl(
      {this.id,
      this.name,
      this.description,
      this.url,
      this.category,
      this.language,
      this.country});

  factory _$NewsSourceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsSourceEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? category;
  @override
  final String? language;
  @override
  final String? country;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsSourceEntity(id: $id, name: $name, description: $description, url: $url, category: $category, language: $language, country: $country)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsSourceEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('country', country));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsSourceEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, url, category, language, country);

  /// Create a copy of NewsSourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsSourceEntityImplCopyWith<_$NewsSourceEntityImpl> get copyWith =>
      __$$NewsSourceEntityImplCopyWithImpl<_$NewsSourceEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsSourceEntityImplToJson(
      this,
    );
  }
}

abstract class _NewsSourceEntity implements NewsSourceEntity {
  const factory _NewsSourceEntity(
      {final String? id,
      final String? name,
      final String? description,
      final String? url,
      final String? category,
      final String? language,
      final String? country}) = _$NewsSourceEntityImpl;

  factory _NewsSourceEntity.fromJson(Map<String, dynamic> json) =
      _$NewsSourceEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get url;
  @override
  String? get category;
  @override
  String? get language;
  @override
  String? get country;

  /// Create a copy of NewsSourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsSourceEntityImplCopyWith<_$NewsSourceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
