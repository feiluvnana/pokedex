// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) {
  return _PokemonModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: "sprites")
  @_AvatarConverter()
  String? get avatar => throw _privateConstructorUsedError;
  @_TypesConverter()
  List<String> get types => throw _privateConstructorUsedError;
  @_StatsConverter()
  List<(String, int)> get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonModelCopyWith<PokemonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonModelCopyWith<$Res> {
  factory $PokemonModelCopyWith(
          PokemonModel value, $Res Function(PokemonModel) then) =
      _$PokemonModelCopyWithImpl<$Res, PokemonModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int weight,
      int height,
      @JsonKey(name: "sprites") @_AvatarConverter() String? avatar,
      @_TypesConverter() List<String> types,
      @_StatsConverter() List<(String, int)> stats});
}

/// @nodoc
class _$PokemonModelCopyWithImpl<$Res, $Val extends PokemonModel>
    implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? height = null,
    Object? avatar = freezed,
    Object? types = null,
    Object? stats = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<(String, int)>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonModelImplCopyWith<$Res>
    implements $PokemonModelCopyWith<$Res> {
  factory _$$PokemonModelImplCopyWith(
          _$PokemonModelImpl value, $Res Function(_$PokemonModelImpl) then) =
      __$$PokemonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int weight,
      int height,
      @JsonKey(name: "sprites") @_AvatarConverter() String? avatar,
      @_TypesConverter() List<String> types,
      @_StatsConverter() List<(String, int)> stats});
}

/// @nodoc
class __$$PokemonModelImplCopyWithImpl<$Res>
    extends _$PokemonModelCopyWithImpl<$Res, _$PokemonModelImpl>
    implements _$$PokemonModelImplCopyWith<$Res> {
  __$$PokemonModelImplCopyWithImpl(
      _$PokemonModelImpl _value, $Res Function(_$PokemonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? height = null,
    Object? avatar = freezed,
    Object? types = null,
    Object? stats = null,
  }) {
    return _then(_$PokemonModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<(String, int)>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonModelImpl implements _PokemonModel {
  const _$PokemonModelImpl(
      {required this.id,
      required this.name,
      required this.weight,
      required this.height,
      @JsonKey(name: "sprites") @_AvatarConverter() this.avatar,
      @_TypesConverter() required final List<String> types,
      @_StatsConverter() required final List<(String, int)> stats})
      : _types = types,
        _stats = stats;

  factory _$PokemonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int weight;
  @override
  final int height;
  @override
  @JsonKey(name: "sprites")
  @_AvatarConverter()
  final String? avatar;
  final List<String> _types;
  @override
  @_TypesConverter()
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<(String, int)> _stats;
  @override
  @_StatsConverter()
  List<(String, int)> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  String toString() {
    return 'PokemonModel(id: $id, name: $name, weight: $weight, height: $height, avatar: $avatar, types: $types, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      weight,
      height,
      avatar,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_stats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonModelImplCopyWith<_$PokemonModelImpl> get copyWith =>
      __$$PokemonModelImplCopyWithImpl<_$PokemonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonModel implements PokemonModel {
  const factory _PokemonModel(
          {required final int id,
          required final String name,
          required final int weight,
          required final int height,
          @JsonKey(name: "sprites") @_AvatarConverter() final String? avatar,
          @_TypesConverter() required final List<String> types,
          @_StatsConverter() required final List<(String, int)> stats}) =
      _$PokemonModelImpl;

  factory _PokemonModel.fromJson(Map<String, dynamic> json) =
      _$PokemonModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get weight;
  @override
  int get height;
  @override
  @JsonKey(name: "sprites")
  @_AvatarConverter()
  String? get avatar;
  @override
  @_TypesConverter()
  List<String> get types;
  @override
  @_StatsConverter()
  List<(String, int)> get stats;
  @override
  @JsonKey(ignore: true)
  _$$PokemonModelImplCopyWith<_$PokemonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
