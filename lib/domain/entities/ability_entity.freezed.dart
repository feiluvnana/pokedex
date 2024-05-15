// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AbilityEntity {
  String get name => throw _privateConstructorUsedError;
  String get fullEffect => throw _privateConstructorUsedError;
  String get shortEffect => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get generation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AbilityEntityCopyWith<AbilityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityEntityCopyWith<$Res> {
  factory $AbilityEntityCopyWith(
          AbilityEntity value, $Res Function(AbilityEntity) then) =
      _$AbilityEntityCopyWithImpl<$Res, AbilityEntity>;
  @useResult
  $Res call(
      {String name,
      String fullEffect,
      String shortEffect,
      String description,
      String generation});
}

/// @nodoc
class _$AbilityEntityCopyWithImpl<$Res, $Val extends AbilityEntity>
    implements $AbilityEntityCopyWith<$Res> {
  _$AbilityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullEffect = null,
    Object? shortEffect = null,
    Object? description = null,
    Object? generation = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullEffect: null == fullEffect
          ? _value.fullEffect
          : fullEffect // ignore: cast_nullable_to_non_nullable
              as String,
      shortEffect: null == shortEffect
          ? _value.shortEffect
          : shortEffect // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbilityEntityImplCopyWith<$Res>
    implements $AbilityEntityCopyWith<$Res> {
  factory _$$AbilityEntityImplCopyWith(
          _$AbilityEntityImpl value, $Res Function(_$AbilityEntityImpl) then) =
      __$$AbilityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String fullEffect,
      String shortEffect,
      String description,
      String generation});
}

/// @nodoc
class __$$AbilityEntityImplCopyWithImpl<$Res>
    extends _$AbilityEntityCopyWithImpl<$Res, _$AbilityEntityImpl>
    implements _$$AbilityEntityImplCopyWith<$Res> {
  __$$AbilityEntityImplCopyWithImpl(
      _$AbilityEntityImpl _value, $Res Function(_$AbilityEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullEffect = null,
    Object? shortEffect = null,
    Object? description = null,
    Object? generation = null,
  }) {
    return _then(_$AbilityEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullEffect: null == fullEffect
          ? _value.fullEffect
          : fullEffect // ignore: cast_nullable_to_non_nullable
              as String,
      shortEffect: null == shortEffect
          ? _value.shortEffect
          : shortEffect // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AbilityEntityImpl extends _AbilityEntity {
  const _$AbilityEntityImpl(
      {required this.name,
      required this.fullEffect,
      required this.shortEffect,
      required this.description,
      required this.generation})
      : super._();

  @override
  final String name;
  @override
  final String fullEffect;
  @override
  final String shortEffect;
  @override
  final String description;
  @override
  final String generation;

  @override
  String toString() {
    return 'AbilityEntity(name: $name, fullEffect: $fullEffect, shortEffect: $shortEffect, description: $description, generation: $generation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilityEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullEffect, fullEffect) ||
                other.fullEffect == fullEffect) &&
            (identical(other.shortEffect, shortEffect) ||
                other.shortEffect == shortEffect) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.generation, generation) ||
                other.generation == generation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, fullEffect, shortEffect, description, generation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilityEntityImplCopyWith<_$AbilityEntityImpl> get copyWith =>
      __$$AbilityEntityImplCopyWithImpl<_$AbilityEntityImpl>(this, _$identity);
}

abstract class _AbilityEntity extends AbilityEntity {
  const factory _AbilityEntity(
      {required final String name,
      required final String fullEffect,
      required final String shortEffect,
      required final String description,
      required final String generation}) = _$AbilityEntityImpl;
  const _AbilityEntity._() : super._();

  @override
  String get name;
  @override
  String get fullEffect;
  @override
  String get shortEffect;
  @override
  String get description;
  @override
  String get generation;
  @override
  @JsonKey(ignore: true)
  _$$AbilityEntityImplCopyWith<_$AbilityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
