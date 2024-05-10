// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_types_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonTypesModel _$PokemonTypesModelFromJson(Map<String, dynamic> json) {
  return _PokemonTypesModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypesModel {
  @JsonKey(name: "damage_relations")
  DamageRelationsModel get damageRelations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypesModelCopyWith<PokemonTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypesModelCopyWith<$Res> {
  factory $PokemonTypesModelCopyWith(
          PokemonTypesModel value, $Res Function(PokemonTypesModel) then) =
      _$PokemonTypesModelCopyWithImpl<$Res, PokemonTypesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "damage_relations")
      DamageRelationsModel damageRelations});

  $DamageRelationsModelCopyWith<$Res> get damageRelations;
}

/// @nodoc
class _$PokemonTypesModelCopyWithImpl<$Res, $Val extends PokemonTypesModel>
    implements $PokemonTypesModelCopyWith<$Res> {
  _$PokemonTypesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? damageRelations = null,
  }) {
    return _then(_value.copyWith(
      damageRelations: null == damageRelations
          ? _value.damageRelations
          : damageRelations // ignore: cast_nullable_to_non_nullable
              as DamageRelationsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageRelationsModelCopyWith<$Res> get damageRelations {
    return $DamageRelationsModelCopyWith<$Res>(_value.damageRelations, (value) {
      return _then(_value.copyWith(damageRelations: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypesModelImplCopyWith<$Res>
    implements $PokemonTypesModelCopyWith<$Res> {
  factory _$$PokemonTypesModelImplCopyWith(_$PokemonTypesModelImpl value,
          $Res Function(_$PokemonTypesModelImpl) then) =
      __$$PokemonTypesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "damage_relations")
      DamageRelationsModel damageRelations});

  @override
  $DamageRelationsModelCopyWith<$Res> get damageRelations;
}

/// @nodoc
class __$$PokemonTypesModelImplCopyWithImpl<$Res>
    extends _$PokemonTypesModelCopyWithImpl<$Res, _$PokemonTypesModelImpl>
    implements _$$PokemonTypesModelImplCopyWith<$Res> {
  __$$PokemonTypesModelImplCopyWithImpl(_$PokemonTypesModelImpl _value,
      $Res Function(_$PokemonTypesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? damageRelations = null,
  }) {
    return _then(_$PokemonTypesModelImpl(
      damageRelations: null == damageRelations
          ? _value.damageRelations
          : damageRelations // ignore: cast_nullable_to_non_nullable
              as DamageRelationsModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PokemonTypesModelImpl implements _PokemonTypesModel {
  const _$PokemonTypesModelImpl(
      {@JsonKey(name: "damage_relations") required this.damageRelations});

  factory _$PokemonTypesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypesModelImplFromJson(json);

  @override
  @JsonKey(name: "damage_relations")
  final DamageRelationsModel damageRelations;

  @override
  String toString() {
    return 'PokemonTypesModel(damageRelations: $damageRelations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypesModelImpl &&
            (identical(other.damageRelations, damageRelations) ||
                other.damageRelations == damageRelations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, damageRelations);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypesModelImplCopyWith<_$PokemonTypesModelImpl> get copyWith =>
      __$$PokemonTypesModelImplCopyWithImpl<_$PokemonTypesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypesModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypesModel implements PokemonTypesModel {
  const factory _PokemonTypesModel(
          {@JsonKey(name: "damage_relations")
          required final DamageRelationsModel damageRelations}) =
      _$PokemonTypesModelImpl;

  factory _PokemonTypesModel.fromJson(Map<String, dynamic> json) =
      _$PokemonTypesModelImpl.fromJson;

  @override
  @JsonKey(name: "damage_relations")
  DamageRelationsModel get damageRelations;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypesModelImplCopyWith<_$PokemonTypesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DamageRelationsModel _$DamageRelationsModelFromJson(Map<String, dynamic> json) {
  return _DamageRelationsModel.fromJson(json);
}

/// @nodoc
mixin _$DamageRelationsModel {
  @_DamageRelationConverter()
  @JsonKey(name: "double_damage_from")
  List<String> get doubleDamageFrom => throw _privateConstructorUsedError;
  @_DamageRelationConverter()
  @JsonKey(name: "double_damage_to")
  List<String> get doubleDamageTo => throw _privateConstructorUsedError;
  @_DamageRelationConverter()
  @JsonKey(name: "no_damage_from")
  List<String> get noDamageFrom => throw _privateConstructorUsedError;
  @_DamageRelationConverter()
  @JsonKey(name: "no_damage_to")
  List<String> get noDamageTo => throw _privateConstructorUsedError;
  @_DamageRelationConverter()
  @JsonKey(name: "half_damage_from")
  List<String> get halfDamageFrom => throw _privateConstructorUsedError;
  @_DamageRelationConverter()
  @JsonKey(name: "half_damage_to")
  List<String> get halfDamageTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DamageRelationsModelCopyWith<DamageRelationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DamageRelationsModelCopyWith<$Res> {
  factory $DamageRelationsModelCopyWith(DamageRelationsModel value,
          $Res Function(DamageRelationsModel) then) =
      _$DamageRelationsModelCopyWithImpl<$Res, DamageRelationsModel>;
  @useResult
  $Res call(
      {@_DamageRelationConverter()
      @JsonKey(name: "double_damage_from")
      List<String> doubleDamageFrom,
      @_DamageRelationConverter()
      @JsonKey(name: "double_damage_to")
      List<String> doubleDamageTo,
      @_DamageRelationConverter()
      @JsonKey(name: "no_damage_from")
      List<String> noDamageFrom,
      @_DamageRelationConverter()
      @JsonKey(name: "no_damage_to")
      List<String> noDamageTo,
      @_DamageRelationConverter()
      @JsonKey(name: "half_damage_from")
      List<String> halfDamageFrom,
      @_DamageRelationConverter()
      @JsonKey(name: "half_damage_to")
      List<String> halfDamageTo});
}

/// @nodoc
class _$DamageRelationsModelCopyWithImpl<$Res,
        $Val extends DamageRelationsModel>
    implements $DamageRelationsModelCopyWith<$Res> {
  _$DamageRelationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doubleDamageFrom = null,
    Object? doubleDamageTo = null,
    Object? noDamageFrom = null,
    Object? noDamageTo = null,
    Object? halfDamageFrom = null,
    Object? halfDamageTo = null,
  }) {
    return _then(_value.copyWith(
      doubleDamageFrom: null == doubleDamageFrom
          ? _value.doubleDamageFrom
          : doubleDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<String>,
      doubleDamageTo: null == doubleDamageTo
          ? _value.doubleDamageTo
          : doubleDamageTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noDamageFrom: null == noDamageFrom
          ? _value.noDamageFrom
          : noDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noDamageTo: null == noDamageTo
          ? _value.noDamageTo
          : noDamageTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
      halfDamageFrom: null == halfDamageFrom
          ? _value.halfDamageFrom
          : halfDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<String>,
      halfDamageTo: null == halfDamageTo
          ? _value.halfDamageTo
          : halfDamageTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DamageRelationsModelImplCopyWith<$Res>
    implements $DamageRelationsModelCopyWith<$Res> {
  factory _$$DamageRelationsModelImplCopyWith(_$DamageRelationsModelImpl value,
          $Res Function(_$DamageRelationsModelImpl) then) =
      __$$DamageRelationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@_DamageRelationConverter()
      @JsonKey(name: "double_damage_from")
      List<String> doubleDamageFrom,
      @_DamageRelationConverter()
      @JsonKey(name: "double_damage_to")
      List<String> doubleDamageTo,
      @_DamageRelationConverter()
      @JsonKey(name: "no_damage_from")
      List<String> noDamageFrom,
      @_DamageRelationConverter()
      @JsonKey(name: "no_damage_to")
      List<String> noDamageTo,
      @_DamageRelationConverter()
      @JsonKey(name: "half_damage_from")
      List<String> halfDamageFrom,
      @_DamageRelationConverter()
      @JsonKey(name: "half_damage_to")
      List<String> halfDamageTo});
}

/// @nodoc
class __$$DamageRelationsModelImplCopyWithImpl<$Res>
    extends _$DamageRelationsModelCopyWithImpl<$Res, _$DamageRelationsModelImpl>
    implements _$$DamageRelationsModelImplCopyWith<$Res> {
  __$$DamageRelationsModelImplCopyWithImpl(_$DamageRelationsModelImpl _value,
      $Res Function(_$DamageRelationsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doubleDamageFrom = null,
    Object? doubleDamageTo = null,
    Object? noDamageFrom = null,
    Object? noDamageTo = null,
    Object? halfDamageFrom = null,
    Object? halfDamageTo = null,
  }) {
    return _then(_$DamageRelationsModelImpl(
      doubleDamageFrom: null == doubleDamageFrom
          ? _value._doubleDamageFrom
          : doubleDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<String>,
      doubleDamageTo: null == doubleDamageTo
          ? _value._doubleDamageTo
          : doubleDamageTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noDamageFrom: null == noDamageFrom
          ? _value._noDamageFrom
          : noDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noDamageTo: null == noDamageTo
          ? _value._noDamageTo
          : noDamageTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
      halfDamageFrom: null == halfDamageFrom
          ? _value._halfDamageFrom
          : halfDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<String>,
      halfDamageTo: null == halfDamageTo
          ? _value._halfDamageTo
          : halfDamageTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DamageRelationsModelImpl implements _DamageRelationsModel {
  const _$DamageRelationsModelImpl(
      {@_DamageRelationConverter()
      @JsonKey(name: "double_damage_from")
      required final List<String> doubleDamageFrom,
      @_DamageRelationConverter()
      @JsonKey(name: "double_damage_to")
      required final List<String> doubleDamageTo,
      @_DamageRelationConverter()
      @JsonKey(name: "no_damage_from")
      required final List<String> noDamageFrom,
      @_DamageRelationConverter()
      @JsonKey(name: "no_damage_to")
      required final List<String> noDamageTo,
      @_DamageRelationConverter()
      @JsonKey(name: "half_damage_from")
      required final List<String> halfDamageFrom,
      @_DamageRelationConverter()
      @JsonKey(name: "half_damage_to")
      required final List<String> halfDamageTo})
      : _doubleDamageFrom = doubleDamageFrom,
        _doubleDamageTo = doubleDamageTo,
        _noDamageFrom = noDamageFrom,
        _noDamageTo = noDamageTo,
        _halfDamageFrom = halfDamageFrom,
        _halfDamageTo = halfDamageTo;

  factory _$DamageRelationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DamageRelationsModelImplFromJson(json);

  final List<String> _doubleDamageFrom;
  @override
  @_DamageRelationConverter()
  @JsonKey(name: "double_damage_from")
  List<String> get doubleDamageFrom {
    if (_doubleDamageFrom is EqualUnmodifiableListView)
      return _doubleDamageFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doubleDamageFrom);
  }

  final List<String> _doubleDamageTo;
  @override
  @_DamageRelationConverter()
  @JsonKey(name: "double_damage_to")
  List<String> get doubleDamageTo {
    if (_doubleDamageTo is EqualUnmodifiableListView) return _doubleDamageTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doubleDamageTo);
  }

  final List<String> _noDamageFrom;
  @override
  @_DamageRelationConverter()
  @JsonKey(name: "no_damage_from")
  List<String> get noDamageFrom {
    if (_noDamageFrom is EqualUnmodifiableListView) return _noDamageFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noDamageFrom);
  }

  final List<String> _noDamageTo;
  @override
  @_DamageRelationConverter()
  @JsonKey(name: "no_damage_to")
  List<String> get noDamageTo {
    if (_noDamageTo is EqualUnmodifiableListView) return _noDamageTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noDamageTo);
  }

  final List<String> _halfDamageFrom;
  @override
  @_DamageRelationConverter()
  @JsonKey(name: "half_damage_from")
  List<String> get halfDamageFrom {
    if (_halfDamageFrom is EqualUnmodifiableListView) return _halfDamageFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_halfDamageFrom);
  }

  final List<String> _halfDamageTo;
  @override
  @_DamageRelationConverter()
  @JsonKey(name: "half_damage_to")
  List<String> get halfDamageTo {
    if (_halfDamageTo is EqualUnmodifiableListView) return _halfDamageTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_halfDamageTo);
  }

  @override
  String toString() {
    return 'DamageRelationsModel(doubleDamageFrom: $doubleDamageFrom, doubleDamageTo: $doubleDamageTo, noDamageFrom: $noDamageFrom, noDamageTo: $noDamageTo, halfDamageFrom: $halfDamageFrom, halfDamageTo: $halfDamageTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DamageRelationsModelImpl &&
            const DeepCollectionEquality()
                .equals(other._doubleDamageFrom, _doubleDamageFrom) &&
            const DeepCollectionEquality()
                .equals(other._doubleDamageTo, _doubleDamageTo) &&
            const DeepCollectionEquality()
                .equals(other._noDamageFrom, _noDamageFrom) &&
            const DeepCollectionEquality()
                .equals(other._noDamageTo, _noDamageTo) &&
            const DeepCollectionEquality()
                .equals(other._halfDamageFrom, _halfDamageFrom) &&
            const DeepCollectionEquality()
                .equals(other._halfDamageTo, _halfDamageTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_doubleDamageFrom),
      const DeepCollectionEquality().hash(_doubleDamageTo),
      const DeepCollectionEquality().hash(_noDamageFrom),
      const DeepCollectionEquality().hash(_noDamageTo),
      const DeepCollectionEquality().hash(_halfDamageFrom),
      const DeepCollectionEquality().hash(_halfDamageTo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DamageRelationsModelImplCopyWith<_$DamageRelationsModelImpl>
      get copyWith =>
          __$$DamageRelationsModelImplCopyWithImpl<_$DamageRelationsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DamageRelationsModelImplToJson(
      this,
    );
  }
}

abstract class _DamageRelationsModel implements DamageRelationsModel {
  const factory _DamageRelationsModel(
      {@_DamageRelationConverter()
      @JsonKey(name: "double_damage_from")
      required final List<String> doubleDamageFrom,
      @_DamageRelationConverter()
      @JsonKey(name: "double_damage_to")
      required final List<String> doubleDamageTo,
      @_DamageRelationConverter()
      @JsonKey(name: "no_damage_from")
      required final List<String> noDamageFrom,
      @_DamageRelationConverter()
      @JsonKey(name: "no_damage_to")
      required final List<String> noDamageTo,
      @_DamageRelationConverter()
      @JsonKey(name: "half_damage_from")
      required final List<String> halfDamageFrom,
      @_DamageRelationConverter()
      @JsonKey(name: "half_damage_to")
      required final List<String> halfDamageTo}) = _$DamageRelationsModelImpl;

  factory _DamageRelationsModel.fromJson(Map<String, dynamic> json) =
      _$DamageRelationsModelImpl.fromJson;

  @override
  @_DamageRelationConverter()
  @JsonKey(name: "double_damage_from")
  List<String> get doubleDamageFrom;
  @override
  @_DamageRelationConverter()
  @JsonKey(name: "double_damage_to")
  List<String> get doubleDamageTo;
  @override
  @_DamageRelationConverter()
  @JsonKey(name: "no_damage_from")
  List<String> get noDamageFrom;
  @override
  @_DamageRelationConverter()
  @JsonKey(name: "no_damage_to")
  List<String> get noDamageTo;
  @override
  @_DamageRelationConverter()
  @JsonKey(name: "half_damage_from")
  List<String> get halfDamageFrom;
  @override
  @_DamageRelationConverter()
  @JsonKey(name: "half_damage_to")
  List<String> get halfDamageTo;
  @override
  @JsonKey(ignore: true)
  _$$DamageRelationsModelImplCopyWith<_$DamageRelationsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
