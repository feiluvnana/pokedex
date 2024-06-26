// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poke_news_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokeNewsEntity {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokeNewsEntityCopyWith<PokeNewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeNewsEntityCopyWith<$Res> {
  factory $PokeNewsEntityCopyWith(
          PokeNewsEntity value, $Res Function(PokeNewsEntity) then) =
      _$PokeNewsEntityCopyWithImpl<$Res, PokeNewsEntity>;
  @useResult
  $Res call({String title, String content, String cover, DateTime createdAt});
}

/// @nodoc
class _$PokeNewsEntityCopyWithImpl<$Res, $Val extends PokeNewsEntity>
    implements $PokeNewsEntityCopyWith<$Res> {
  _$PokeNewsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? cover = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$PokeNewsEntityImplCopyWith<$Res>
    implements $PokeNewsEntityCopyWith<$Res> {
  factory _$$PokeNewsEntityImplCopyWith(_$PokeNewsEntityImpl value,
          $Res Function(_$PokeNewsEntityImpl) then) =
      __$$PokeNewsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content, String cover, DateTime createdAt});
}

/// @nodoc
class __$$PokeNewsEntityImplCopyWithImpl<$Res>
    extends _$PokeNewsEntityCopyWithImpl<$Res, _$PokeNewsEntityImpl>
    implements _$$PokeNewsEntityImplCopyWith<$Res> {
  __$$PokeNewsEntityImplCopyWithImpl(
      _$PokeNewsEntityImpl _value, $Res Function(_$PokeNewsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? cover = null,
    Object? createdAt = null,
  }) {
    return _then(_$PokeNewsEntityImpl(
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

class _$PokeNewsEntityImpl implements _PokeNewsEntity {
  const _$PokeNewsEntityImpl(
      {required this.title,
      required this.content,
      required this.cover,
      required this.createdAt});

  @override
  final String title;
  @override
  final String content;
  @override
  final String cover;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PokeNewsEntity(title: $title, content: $content, cover: $cover, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeNewsEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, content, cover, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeNewsEntityImplCopyWith<_$PokeNewsEntityImpl> get copyWith =>
      __$$PokeNewsEntityImplCopyWithImpl<_$PokeNewsEntityImpl>(
          this, _$identity);
}

abstract class _PokeNewsEntity implements PokeNewsEntity {
  const factory _PokeNewsEntity(
      {required final String title,
      required final String content,
      required final String cover,
      required final DateTime createdAt}) = _$PokeNewsEntityImpl;

  @override
  String get title;
  @override
  String get content;
  @override
  String get cover;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PokeNewsEntityImplCopyWith<_$PokeNewsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
