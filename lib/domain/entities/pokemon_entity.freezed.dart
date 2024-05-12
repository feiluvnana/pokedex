// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  int get heightInCm => throw _privateConstructorUsedError;
  double get weightInKg => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;
  List<String> get abilities => throw _privateConstructorUsedError;
  List<String> get moves => throw _privateConstructorUsedError;
  List<(String, int)> get stats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonEntityCopyWith<PokemonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEntityCopyWith<$Res> {
  factory $PokemonEntityCopyWith(
          PokemonEntity value, $Res Function(PokemonEntity) then) =
      _$PokemonEntityCopyWithImpl<$Res, PokemonEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? avatar,
      int heightInCm,
      double weightInKg,
      List<String> types,
      List<String> abilities,
      List<String> moves,
      List<(String, int)> stats});
}

/// @nodoc
class _$PokemonEntityCopyWithImpl<$Res, $Val extends PokemonEntity>
    implements $PokemonEntityCopyWith<$Res> {
  _$PokemonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = freezed,
    Object? heightInCm = null,
    Object? weightInKg = null,
    Object? types = null,
    Object? abilities = null,
    Object? moves = null,
    Object? stats = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      heightInCm: null == heightInCm
          ? _value.heightInCm
          : heightInCm // ignore: cast_nullable_to_non_nullable
              as int,
      weightInKg: null == weightInKg
          ? _value.weightInKg
          : weightInKg // ignore: cast_nullable_to_non_nullable
              as double,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<(String, int)>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonEntityImplCopyWith<$Res>
    implements $PokemonEntityCopyWith<$Res> {
  factory _$$PokemonEntityImplCopyWith(
          _$PokemonEntityImpl value, $Res Function(_$PokemonEntityImpl) then) =
      __$$PokemonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? avatar,
      int heightInCm,
      double weightInKg,
      List<String> types,
      List<String> abilities,
      List<String> moves,
      List<(String, int)> stats});
}

/// @nodoc
class __$$PokemonEntityImplCopyWithImpl<$Res>
    extends _$PokemonEntityCopyWithImpl<$Res, _$PokemonEntityImpl>
    implements _$$PokemonEntityImplCopyWith<$Res> {
  __$$PokemonEntityImplCopyWithImpl(
      _$PokemonEntityImpl _value, $Res Function(_$PokemonEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = freezed,
    Object? heightInCm = null,
    Object? weightInKg = null,
    Object? types = null,
    Object? abilities = null,
    Object? moves = null,
    Object? stats = null,
  }) {
    return _then(_$PokemonEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      heightInCm: null == heightInCm
          ? _value.heightInCm
          : heightInCm // ignore: cast_nullable_to_non_nullable
              as int,
      weightInKg: null == weightInKg
          ? _value.weightInKg
          : weightInKg // ignore: cast_nullable_to_non_nullable
              as double,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moves: null == moves
          ? _value._moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<(String, int)>,
    ));
  }
}

/// @nodoc

class _$PokemonEntityImpl extends _PokemonEntity {
  const _$PokemonEntityImpl(
      {required this.id,
      required this.name,
      this.avatar,
      required this.heightInCm,
      required this.weightInKg,
      required final List<String> types,
      required final List<String> abilities,
      required final List<String> moves,
      required final List<(String, int)> stats})
      : _types = types,
        _abilities = abilities,
        _moves = moves,
        _stats = stats,
        super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String? avatar;
  @override
  final int heightInCm;
  @override
  final double weightInKg;
  final List<String> _types;
  @override
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<String> _abilities;
  @override
  List<String> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  final List<String> _moves;
  @override
  List<String> get moves {
    if (_moves is EqualUnmodifiableListView) return _moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moves);
  }

  final List<(String, int)> _stats;
  @override
  List<(String, int)> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  String toString() {
    return 'PokemonEntity(id: $id, name: $name, avatar: $avatar, heightInCm: $heightInCm, weightInKg: $weightInKg, types: $types, abilities: $abilities, moves: $moves, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.heightInCm, heightInCm) ||
                other.heightInCm == heightInCm) &&
            (identical(other.weightInKg, weightInKg) ||
                other.weightInKg == weightInKg) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality().equals(other._moves, _moves) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      avatar,
      heightInCm,
      weightInKg,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(_moves),
      const DeepCollectionEquality().hash(_stats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEntityImplCopyWith<_$PokemonEntityImpl> get copyWith =>
      __$$PokemonEntityImplCopyWithImpl<_$PokemonEntityImpl>(this, _$identity);
}

abstract class _PokemonEntity extends PokemonEntity {
  const factory _PokemonEntity(
      {required final String id,
      required final String name,
      final String? avatar,
      required final int heightInCm,
      required final double weightInKg,
      required final List<String> types,
      required final List<String> abilities,
      required final List<String> moves,
      required final List<(String, int)> stats}) = _$PokemonEntityImpl;
  const _PokemonEntity._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  String? get avatar;
  @override
  int get heightInCm;
  @override
  double get weightInKg;
  @override
  List<String> get types;
  @override
  List<String> get abilities;
  @override
  List<String> get moves;
  @override
  List<(String, int)> get stats;
  @override
  @JsonKey(ignore: true)
  _$$PokemonEntityImplCopyWith<_$PokemonEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
