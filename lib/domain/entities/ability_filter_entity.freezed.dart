// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_filter_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AbilityFilterEntity {
  String get generation => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String generation) generation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String generation)? generation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String generation)? generation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AbilityGenerationFilter value) generation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AbilityGenerationFilter value)? generation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AbilityGenerationFilter value)? generation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AbilityFilterEntityCopyWith<AbilityFilterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityFilterEntityCopyWith<$Res> {
  factory $AbilityFilterEntityCopyWith(
          AbilityFilterEntity value, $Res Function(AbilityFilterEntity) then) =
      _$AbilityFilterEntityCopyWithImpl<$Res, AbilityFilterEntity>;
  @useResult
  $Res call({String generation});
}

/// @nodoc
class _$AbilityFilterEntityCopyWithImpl<$Res, $Val extends AbilityFilterEntity>
    implements $AbilityFilterEntityCopyWith<$Res> {
  _$AbilityFilterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generation = null,
  }) {
    return _then(_value.copyWith(
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbilityGenerationFilterImplCopyWith<$Res>
    implements $AbilityFilterEntityCopyWith<$Res> {
  factory _$$AbilityGenerationFilterImplCopyWith(
          _$AbilityGenerationFilterImpl value,
          $Res Function(_$AbilityGenerationFilterImpl) then) =
      __$$AbilityGenerationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String generation});
}

/// @nodoc
class __$$AbilityGenerationFilterImplCopyWithImpl<$Res>
    extends _$AbilityFilterEntityCopyWithImpl<$Res,
        _$AbilityGenerationFilterImpl>
    implements _$$AbilityGenerationFilterImplCopyWith<$Res> {
  __$$AbilityGenerationFilterImplCopyWithImpl(
      _$AbilityGenerationFilterImpl _value,
      $Res Function(_$AbilityGenerationFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generation = null,
  }) {
    return _then(_$AbilityGenerationFilterImpl(
      null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AbilityGenerationFilterImpl implements AbilityGenerationFilter {
  const _$AbilityGenerationFilterImpl(this.generation);

  @override
  final String generation;

  @override
  String toString() {
    return 'AbilityFilterEntity.generation(generation: $generation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilityGenerationFilterImpl &&
            (identical(other.generation, generation) ||
                other.generation == generation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilityGenerationFilterImplCopyWith<_$AbilityGenerationFilterImpl>
      get copyWith => __$$AbilityGenerationFilterImplCopyWithImpl<
          _$AbilityGenerationFilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String generation) generation,
  }) {
    return generation(this.generation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String generation)? generation,
  }) {
    return generation?.call(this.generation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String generation)? generation,
    required TResult orElse(),
  }) {
    if (generation != null) {
      return generation(this.generation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AbilityGenerationFilter value) generation,
  }) {
    return generation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AbilityGenerationFilter value)? generation,
  }) {
    return generation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AbilityGenerationFilter value)? generation,
    required TResult orElse(),
  }) {
    if (generation != null) {
      return generation(this);
    }
    return orElse();
  }
}

abstract class AbilityGenerationFilter implements AbilityFilterEntity {
  const factory AbilityGenerationFilter(final String generation) =
      _$AbilityGenerationFilterImpl;

  @override
  String get generation;
  @override
  @JsonKey(ignore: true)
  _$$AbilityGenerationFilterImplCopyWith<_$AbilityGenerationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
