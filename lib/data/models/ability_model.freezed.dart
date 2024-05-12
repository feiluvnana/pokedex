// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AbilityModel _$AbilityModelFromJson(Map<String, dynamic> json) {
  return _AbilityModel.fromJson(json);
}

/// @nodoc
mixin _$AbilityModel {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "effect_entries")
  @_EffectEntriesConverter()
  (String, String) get effect => throw _privateConstructorUsedError;
  @_DescriptionConverter()
  @JsonKey(name: "flavor_text_entries")
  String get description => throw _privateConstructorUsedError;
  @_GenerationConverter()
  String get generation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityModelCopyWith<AbilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityModelCopyWith<$Res> {
  factory $AbilityModelCopyWith(
          AbilityModel value, $Res Function(AbilityModel) then) =
      _$AbilityModelCopyWithImpl<$Res, AbilityModel>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "effect_entries")
      @_EffectEntriesConverter()
      (String, String) effect,
      @_DescriptionConverter()
      @JsonKey(name: "flavor_text_entries")
      String description,
      @_GenerationConverter() String generation});
}

/// @nodoc
class _$AbilityModelCopyWithImpl<$Res, $Val extends AbilityModel>
    implements $AbilityModelCopyWith<$Res> {
  _$AbilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? effect = null,
    Object? description = null,
    Object? generation = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as (String, String),
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
abstract class _$$AbilityModelImplCopyWith<$Res>
    implements $AbilityModelCopyWith<$Res> {
  factory _$$AbilityModelImplCopyWith(
          _$AbilityModelImpl value, $Res Function(_$AbilityModelImpl) then) =
      __$$AbilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "effect_entries")
      @_EffectEntriesConverter()
      (String, String) effect,
      @_DescriptionConverter()
      @JsonKey(name: "flavor_text_entries")
      String description,
      @_GenerationConverter() String generation});
}

/// @nodoc
class __$$AbilityModelImplCopyWithImpl<$Res>
    extends _$AbilityModelCopyWithImpl<$Res, _$AbilityModelImpl>
    implements _$$AbilityModelImplCopyWith<$Res> {
  __$$AbilityModelImplCopyWithImpl(
      _$AbilityModelImpl _value, $Res Function(_$AbilityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? effect = null,
    Object? description = null,
    Object? generation = null,
  }) {
    return _then(_$AbilityModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as (String, String),
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
@JsonSerializable()
class _$AbilityModelImpl implements _AbilityModel {
  const _$AbilityModelImpl(
      {required this.name,
      @JsonKey(name: "effect_entries")
      @_EffectEntriesConverter()
      required this.effect,
      @_DescriptionConverter()
      @JsonKey(name: "flavor_text_entries")
      required this.description,
      @_GenerationConverter() required this.generation});

  factory _$AbilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilityModelImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "effect_entries")
  @_EffectEntriesConverter()
  final (String, String) effect;
  @override
  @_DescriptionConverter()
  @JsonKey(name: "flavor_text_entries")
  final String description;
  @override
  @_GenerationConverter()
  final String generation;

  @override
  String toString() {
    return 'AbilityModel(name: $name, effect: $effect, description: $description, generation: $generation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilityModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.effect, effect) || other.effect == effect) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.generation, generation) ||
                other.generation == generation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, effect, description, generation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilityModelImplCopyWith<_$AbilityModelImpl> get copyWith =>
      __$$AbilityModelImplCopyWithImpl<_$AbilityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilityModelImplToJson(
      this,
    );
  }
}

abstract class _AbilityModel implements AbilityModel {
  const factory _AbilityModel(
          {required final String name,
          @JsonKey(name: "effect_entries")
          @_EffectEntriesConverter()
          required final (String, String) effect,
          @_DescriptionConverter()
          @JsonKey(name: "flavor_text_entries")
          required final String description,
          @_GenerationConverter() required final String generation}) =
      _$AbilityModelImpl;

  factory _AbilityModel.fromJson(Map<String, dynamic> json) =
      _$AbilityModelImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "effect_entries")
  @_EffectEntriesConverter()
  (String, String) get effect;
  @override
  @_DescriptionConverter()
  @JsonKey(name: "flavor_text_entries")
  String get description;
  @override
  @_GenerationConverter()
  String get generation;
  @override
  @JsonKey(ignore: true)
  _$$AbilityModelImplCopyWith<_$AbilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
