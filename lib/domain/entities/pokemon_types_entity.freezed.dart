// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_types_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonTypesEntity {
  List<(String, double)> get attackRelation =>
      throw _privateConstructorUsedError;
  List<(String, double)> get defenseRelation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonTypesEntityCopyWith<PokemonTypesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypesEntityCopyWith<$Res> {
  factory $PokemonTypesEntityCopyWith(
          PokemonTypesEntity value, $Res Function(PokemonTypesEntity) then) =
      _$PokemonTypesEntityCopyWithImpl<$Res, PokemonTypesEntity>;
  @useResult
  $Res call(
      {List<(String, double)> attackRelation,
      List<(String, double)> defenseRelation});
}

/// @nodoc
class _$PokemonTypesEntityCopyWithImpl<$Res, $Val extends PokemonTypesEntity>
    implements $PokemonTypesEntityCopyWith<$Res> {
  _$PokemonTypesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attackRelation = null,
    Object? defenseRelation = null,
  }) {
    return _then(_value.copyWith(
      attackRelation: null == attackRelation
          ? _value.attackRelation
          : attackRelation // ignore: cast_nullable_to_non_nullable
              as List<(String, double)>,
      defenseRelation: null == defenseRelation
          ? _value.defenseRelation
          : defenseRelation // ignore: cast_nullable_to_non_nullable
              as List<(String, double)>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonTypesEntityImplCopyWith<$Res>
    implements $PokemonTypesEntityCopyWith<$Res> {
  factory _$$PokemonTypesEntityImplCopyWith(_$PokemonTypesEntityImpl value,
          $Res Function(_$PokemonTypesEntityImpl) then) =
      __$$PokemonTypesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<(String, double)> attackRelation,
      List<(String, double)> defenseRelation});
}

/// @nodoc
class __$$PokemonTypesEntityImplCopyWithImpl<$Res>
    extends _$PokemonTypesEntityCopyWithImpl<$Res, _$PokemonTypesEntityImpl>
    implements _$$PokemonTypesEntityImplCopyWith<$Res> {
  __$$PokemonTypesEntityImplCopyWithImpl(_$PokemonTypesEntityImpl _value,
      $Res Function(_$PokemonTypesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attackRelation = null,
    Object? defenseRelation = null,
  }) {
    return _then(_$PokemonTypesEntityImpl(
      attackRelation: null == attackRelation
          ? _value._attackRelation
          : attackRelation // ignore: cast_nullable_to_non_nullable
              as List<(String, double)>,
      defenseRelation: null == defenseRelation
          ? _value._defenseRelation
          : defenseRelation // ignore: cast_nullable_to_non_nullable
              as List<(String, double)>,
    ));
  }
}

/// @nodoc

class _$PokemonTypesEntityImpl extends _PokemonTypesEntity {
  const _$PokemonTypesEntityImpl(
      {required final List<(String, double)> attackRelation,
      required final List<(String, double)> defenseRelation})
      : _attackRelation = attackRelation,
        _defenseRelation = defenseRelation,
        super._();

  final List<(String, double)> _attackRelation;
  @override
  List<(String, double)> get attackRelation {
    if (_attackRelation is EqualUnmodifiableListView) return _attackRelation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attackRelation);
  }

  final List<(String, double)> _defenseRelation;
  @override
  List<(String, double)> get defenseRelation {
    if (_defenseRelation is EqualUnmodifiableListView) return _defenseRelation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defenseRelation);
  }

  @override
  String toString() {
    return 'PokemonTypesEntity(attackRelation: $attackRelation, defenseRelation: $defenseRelation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypesEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._attackRelation, _attackRelation) &&
            const DeepCollectionEquality()
                .equals(other._defenseRelation, _defenseRelation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_attackRelation),
      const DeepCollectionEquality().hash(_defenseRelation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypesEntityImplCopyWith<_$PokemonTypesEntityImpl> get copyWith =>
      __$$PokemonTypesEntityImplCopyWithImpl<_$PokemonTypesEntityImpl>(
          this, _$identity);
}

abstract class _PokemonTypesEntity extends PokemonTypesEntity {
  const factory _PokemonTypesEntity(
          {required final List<(String, double)> attackRelation,
          required final List<(String, double)> defenseRelation}) =
      _$PokemonTypesEntityImpl;
  const _PokemonTypesEntity._() : super._();

  @override
  List<(String, double)> get attackRelation;
  @override
  List<(String, double)> get defenseRelation;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypesEntityImplCopyWith<_$PokemonTypesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
