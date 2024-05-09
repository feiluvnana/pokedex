// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonSpeciesEntity {
  List<String> get eggGroups => throw _privateConstructorUsedError;
  double get maleInPercentage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonSpeciesEntityCopyWith<PokemonSpeciesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesEntityCopyWith<$Res> {
  factory $PokemonSpeciesEntityCopyWith(PokemonSpeciesEntity value,
          $Res Function(PokemonSpeciesEntity) then) =
      _$PokemonSpeciesEntityCopyWithImpl<$Res, PokemonSpeciesEntity>;
  @useResult
  $Res call(
      {List<String> eggGroups, double maleInPercentage, String description});
}

/// @nodoc
class _$PokemonSpeciesEntityCopyWithImpl<$Res,
        $Val extends PokemonSpeciesEntity>
    implements $PokemonSpeciesEntityCopyWith<$Res> {
  _$PokemonSpeciesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eggGroups = null,
    Object? maleInPercentage = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      eggGroups: null == eggGroups
          ? _value.eggGroups
          : eggGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maleInPercentage: null == maleInPercentage
          ? _value.maleInPercentage
          : maleInPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesEntityImplCopyWith<$Res>
    implements $PokemonSpeciesEntityCopyWith<$Res> {
  factory _$$PokemonSpeciesEntityImplCopyWith(_$PokemonSpeciesEntityImpl value,
          $Res Function(_$PokemonSpeciesEntityImpl) then) =
      __$$PokemonSpeciesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> eggGroups, double maleInPercentage, String description});
}

/// @nodoc
class __$$PokemonSpeciesEntityImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesEntityCopyWithImpl<$Res, _$PokemonSpeciesEntityImpl>
    implements _$$PokemonSpeciesEntityImplCopyWith<$Res> {
  __$$PokemonSpeciesEntityImplCopyWithImpl(_$PokemonSpeciesEntityImpl _value,
      $Res Function(_$PokemonSpeciesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eggGroups = null,
    Object? maleInPercentage = null,
    Object? description = null,
  }) {
    return _then(_$PokemonSpeciesEntityImpl(
      eggGroups: null == eggGroups
          ? _value._eggGroups
          : eggGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maleInPercentage: null == maleInPercentage
          ? _value.maleInPercentage
          : maleInPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokemonSpeciesEntityImpl extends _PokemonSpeciesEntity {
  const _$PokemonSpeciesEntityImpl(
      {required final List<String> eggGroups,
      required this.maleInPercentage,
      required this.description})
      : _eggGroups = eggGroups,
        super._();

  final List<String> _eggGroups;
  @override
  List<String> get eggGroups {
    if (_eggGroups is EqualUnmodifiableListView) return _eggGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eggGroups);
  }

  @override
  final double maleInPercentage;
  @override
  final String description;

  @override
  String toString() {
    return 'PokemonSpeciesEntity(eggGroups: $eggGroups, maleInPercentage: $maleInPercentage, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._eggGroups, _eggGroups) &&
            (identical(other.maleInPercentage, maleInPercentage) ||
                other.maleInPercentage == maleInPercentage) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_eggGroups),
      maleInPercentage,
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesEntityImplCopyWith<_$PokemonSpeciesEntityImpl>
      get copyWith =>
          __$$PokemonSpeciesEntityImplCopyWithImpl<_$PokemonSpeciesEntityImpl>(
              this, _$identity);
}

abstract class _PokemonSpeciesEntity extends PokemonSpeciesEntity {
  const factory _PokemonSpeciesEntity(
      {required final List<String> eggGroups,
      required final double maleInPercentage,
      required final String description}) = _$PokemonSpeciesEntityImpl;
  const _PokemonSpeciesEntity._() : super._();

  @override
  List<String> get eggGroups;
  @override
  double get maleInPercentage;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSpeciesEntityImplCopyWith<_$PokemonSpeciesEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
