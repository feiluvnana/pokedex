// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poke_news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokeNewsModel _$PokeNewsModelFromJson(Map<String, dynamic> json) {
  return _PokeNewsModel.fromJson(json);
}

/// @nodoc
mixin _$PokeNewsModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeNewsModelCopyWith<PokeNewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeNewsModelCopyWith<$Res> {
  factory $PokeNewsModelCopyWith(
          PokeNewsModel value, $Res Function(PokeNewsModel) then) =
      _$PokeNewsModelCopyWithImpl<$Res, PokeNewsModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String cover,
      @DateTimeConverter() DateTime createdAt});
}

/// @nodoc
class _$PokeNewsModelCopyWithImpl<$Res, $Val extends PokeNewsModel>
    implements $PokeNewsModelCopyWith<$Res> {
  _$PokeNewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? cover = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokeNewsModelImplCopyWith<$Res>
    implements $PokeNewsModelCopyWith<$Res> {
  factory _$$PokeNewsModelImplCopyWith(
          _$PokeNewsModelImpl value, $Res Function(_$PokeNewsModelImpl) then) =
      __$$PokeNewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String cover,
      @DateTimeConverter() DateTime createdAt});
}

/// @nodoc
class __$$PokeNewsModelImplCopyWithImpl<$Res>
    extends _$PokeNewsModelCopyWithImpl<$Res, _$PokeNewsModelImpl>
    implements _$$PokeNewsModelImplCopyWith<$Res> {
  __$$PokeNewsModelImplCopyWithImpl(
      _$PokeNewsModelImpl _value, $Res Function(_$PokeNewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? cover = null,
    Object? createdAt = null,
  }) {
    return _then(_$PokeNewsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeNewsModelImpl implements _PokeNewsModel {
  const _$PokeNewsModelImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.cover,
      @DateTimeConverter() required this.createdAt});

  factory _$PokeNewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeNewsModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String cover;
  @override
  @DateTimeConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'PokeNewsModel(id: $id, title: $title, content: $content, cover: $cover, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeNewsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, content, cover, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeNewsModelImplCopyWith<_$PokeNewsModelImpl> get copyWith =>
      __$$PokeNewsModelImplCopyWithImpl<_$PokeNewsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeNewsModelImplToJson(
      this,
    );
  }
}

abstract class _PokeNewsModel implements PokeNewsModel {
  const factory _PokeNewsModel(
          {required final String id,
          required final String title,
          required final String content,
          required final String cover,
          @DateTimeConverter() required final DateTime createdAt}) =
      _$PokeNewsModelImpl;

  factory _PokeNewsModel.fromJson(Map<String, dynamic> json) =
      _$PokeNewsModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get cover;
  @override
  @DateTimeConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PokeNewsModelImplCopyWith<_$PokeNewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
