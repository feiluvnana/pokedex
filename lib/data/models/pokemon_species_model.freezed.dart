// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSpeciesModel _$PokemonSpeciesModelFromJson(Map<String, dynamic> json) {
  return _PokemonSpeciesModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpeciesModel {
  @_EggGroupsConverter()
  @JsonKey(name: "egg_groups")
  List<String> get eggGroups => throw _privateConstructorUsedError;
  @JsonKey(name: "gender_rate")
  int get genderRate => throw _privateConstructorUsedError;
  @JsonKey(name: "flavor_text_entries")
  @_DescriptionConverter()
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpeciesModelCopyWith<PokemonSpeciesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesModelCopyWith<$Res> {
  factory $PokemonSpeciesModelCopyWith(
          PokemonSpeciesModel value, $Res Function(PokemonSpeciesModel) then) =
      _$PokemonSpeciesModelCopyWithImpl<$Res, PokemonSpeciesModel>;
  @useResult
  $Res call(
      {@_EggGroupsConverter()
      @JsonKey(name: "egg_groups")
      List<String> eggGroups,
      @JsonKey(name: "gender_rate") int genderRate,
      @JsonKey(name: "flavor_text_entries")
      @_DescriptionConverter()
      String description});
}

/// @nodoc
class _$PokemonSpeciesModelCopyWithImpl<$Res, $Val extends PokemonSpeciesModel>
    implements $PokemonSpeciesModelCopyWith<$Res> {
  _$PokemonSpeciesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eggGroups = null,
    Object? genderRate = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      eggGroups: null == eggGroups
          ? _value.eggGroups
          : eggGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      genderRate: null == genderRate
          ? _value.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesModelImplCopyWith<$Res>
    implements $PokemonSpeciesModelCopyWith<$Res> {
  factory _$$PokemonSpeciesModelImplCopyWith(_$PokemonSpeciesModelImpl value,
          $Res Function(_$PokemonSpeciesModelImpl) then) =
      __$$PokemonSpeciesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@_EggGroupsConverter()
      @JsonKey(name: "egg_groups")
      List<String> eggGroups,
      @JsonKey(name: "gender_rate") int genderRate,
      @JsonKey(name: "flavor_text_entries")
      @_DescriptionConverter()
      String description});
}

/// @nodoc
class __$$PokemonSpeciesModelImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesModelCopyWithImpl<$Res, _$PokemonSpeciesModelImpl>
    implements _$$PokemonSpeciesModelImplCopyWith<$Res> {
  __$$PokemonSpeciesModelImplCopyWithImpl(_$PokemonSpeciesModelImpl _value,
      $Res Function(_$PokemonSpeciesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eggGroups = null,
    Object? genderRate = null,
    Object? description = null,
  }) {
    return _then(_$PokemonSpeciesModelImpl(
      eggGroups: null == eggGroups
          ? _value._eggGroups
          : eggGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      genderRate: null == genderRate
          ? _value.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpeciesModelImpl implements _PokemonSpeciesModel {
  const _$PokemonSpeciesModelImpl(
      {@_EggGroupsConverter()
      @JsonKey(name: "egg_groups")
      required final List<String> eggGroups,
      @JsonKey(name: "gender_rate") required this.genderRate,
      @JsonKey(name: "flavor_text_entries")
      @_DescriptionConverter()
      required this.description})
      : _eggGroups = eggGroups;

  factory _$PokemonSpeciesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpeciesModelImplFromJson(json);

  final List<String> _eggGroups;
  @override
  @_EggGroupsConverter()
  @JsonKey(name: "egg_groups")
  List<String> get eggGroups {
    if (_eggGroups is EqualUnmodifiableListView) return _eggGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eggGroups);
  }

  @override
  @JsonKey(name: "gender_rate")
  final int genderRate;
  @override
  @JsonKey(name: "flavor_text_entries")
  @_DescriptionConverter()
  final String description;

  @override
  String toString() {
    return 'PokemonSpeciesModel(eggGroups: $eggGroups, genderRate: $genderRate, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesModelImpl &&
            const DeepCollectionEquality()
                .equals(other._eggGroups, _eggGroups) &&
            (identical(other.genderRate, genderRate) ||
                other.genderRate == genderRate) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_eggGroups), genderRate, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesModelImplCopyWith<_$PokemonSpeciesModelImpl> get copyWith =>
      __$$PokemonSpeciesModelImplCopyWithImpl<_$PokemonSpeciesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpeciesModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpeciesModel implements PokemonSpeciesModel {
  const factory _PokemonSpeciesModel(
      {@_EggGroupsConverter()
      @JsonKey(name: "egg_groups")
      required final List<String> eggGroups,
      @JsonKey(name: "gender_rate") required final int genderRate,
      @JsonKey(name: "flavor_text_entries")
      @_DescriptionConverter()
      required final String description}) = _$PokemonSpeciesModelImpl;

  factory _PokemonSpeciesModel.fromJson(Map<String, dynamic> json) =
      _$PokemonSpeciesModelImpl.fromJson;

  @override
  @_EggGroupsConverter()
  @JsonKey(name: "egg_groups")
  List<String> get eggGroups;
  @override
  @JsonKey(name: "gender_rate")
  int get genderRate;
  @override
  @JsonKey(name: "flavor_text_entries")
  @_DescriptionConverter()
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSpeciesModelImplCopyWith<_$PokemonSpeciesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
