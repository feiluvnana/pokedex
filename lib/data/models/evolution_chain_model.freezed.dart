// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_chain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EvolutionChainModel _$EvolutionChainModelFromJson(Map<String, dynamic> json) {
  return _EvolutionChainModel.fromJson(json);
}

/// @nodoc
mixin _$EvolutionChainModel {
  ChainLinkModel get chain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvolutionChainModelCopyWith<EvolutionChainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolutionChainModelCopyWith<$Res> {
  factory $EvolutionChainModelCopyWith(
          EvolutionChainModel value, $Res Function(EvolutionChainModel) then) =
      _$EvolutionChainModelCopyWithImpl<$Res, EvolutionChainModel>;
  @useResult
  $Res call({ChainLinkModel chain});

  $ChainLinkModelCopyWith<$Res> get chain;
}

/// @nodoc
class _$EvolutionChainModelCopyWithImpl<$Res, $Val extends EvolutionChainModel>
    implements $EvolutionChainModelCopyWith<$Res> {
  _$EvolutionChainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chain = null,
  }) {
    return _then(_value.copyWith(
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as ChainLinkModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChainLinkModelCopyWith<$Res> get chain {
    return $ChainLinkModelCopyWith<$Res>(_value.chain, (value) {
      return _then(_value.copyWith(chain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EvolutionChainModelImplCopyWith<$Res>
    implements $EvolutionChainModelCopyWith<$Res> {
  factory _$$EvolutionChainModelImplCopyWith(_$EvolutionChainModelImpl value,
          $Res Function(_$EvolutionChainModelImpl) then) =
      __$$EvolutionChainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChainLinkModel chain});

  @override
  $ChainLinkModelCopyWith<$Res> get chain;
}

/// @nodoc
class __$$EvolutionChainModelImplCopyWithImpl<$Res>
    extends _$EvolutionChainModelCopyWithImpl<$Res, _$EvolutionChainModelImpl>
    implements _$$EvolutionChainModelImplCopyWith<$Res> {
  __$$EvolutionChainModelImplCopyWithImpl(_$EvolutionChainModelImpl _value,
      $Res Function(_$EvolutionChainModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chain = null,
  }) {
    return _then(_$EvolutionChainModelImpl(
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as ChainLinkModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$EvolutionChainModelImpl implements _EvolutionChainModel {
  const _$EvolutionChainModelImpl({required this.chain});

  factory _$EvolutionChainModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvolutionChainModelImplFromJson(json);

  @override
  final ChainLinkModel chain;

  @override
  String toString() {
    return 'EvolutionChainModel(chain: $chain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvolutionChainModelImpl &&
            (identical(other.chain, chain) || other.chain == chain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvolutionChainModelImplCopyWith<_$EvolutionChainModelImpl> get copyWith =>
      __$$EvolutionChainModelImplCopyWithImpl<_$EvolutionChainModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvolutionChainModelImplToJson(
      this,
    );
  }
}

abstract class _EvolutionChainModel implements EvolutionChainModel {
  const factory _EvolutionChainModel({required final ChainLinkModel chain}) =
      _$EvolutionChainModelImpl;

  factory _EvolutionChainModel.fromJson(Map<String, dynamic> json) =
      _$EvolutionChainModelImpl.fromJson;

  @override
  ChainLinkModel get chain;
  @override
  @JsonKey(ignore: true)
  _$$EvolutionChainModelImplCopyWith<_$EvolutionChainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChainLinkModel _$ChainLinkModelFromJson(Map<String, dynamic> json) {
  return _ChainLinkModel.fromJson(json);
}

/// @nodoc
mixin _$ChainLinkModel {
  @JsonKey(name: "evolves_to")
  List<ChainLinkModel> get evolvesTo => throw _privateConstructorUsedError;
  @_PokemonNameConverter()
  @JsonKey(name: "species")
  String get pokemonName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChainLinkModelCopyWith<ChainLinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainLinkModelCopyWith<$Res> {
  factory $ChainLinkModelCopyWith(
          ChainLinkModel value, $Res Function(ChainLinkModel) then) =
      _$ChainLinkModelCopyWithImpl<$Res, ChainLinkModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "evolves_to") List<ChainLinkModel> evolvesTo,
      @_PokemonNameConverter() @JsonKey(name: "species") String pokemonName});
}

/// @nodoc
class _$ChainLinkModelCopyWithImpl<$Res, $Val extends ChainLinkModel>
    implements $ChainLinkModelCopyWith<$Res> {
  _$ChainLinkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolvesTo = null,
    Object? pokemonName = null,
  }) {
    return _then(_value.copyWith(
      evolvesTo: null == evolvesTo
          ? _value.evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<ChainLinkModel>,
      pokemonName: null == pokemonName
          ? _value.pokemonName
          : pokemonName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChainLinkModelImplCopyWith<$Res>
    implements $ChainLinkModelCopyWith<$Res> {
  factory _$$ChainLinkModelImplCopyWith(_$ChainLinkModelImpl value,
          $Res Function(_$ChainLinkModelImpl) then) =
      __$$ChainLinkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "evolves_to") List<ChainLinkModel> evolvesTo,
      @_PokemonNameConverter() @JsonKey(name: "species") String pokemonName});
}

/// @nodoc
class __$$ChainLinkModelImplCopyWithImpl<$Res>
    extends _$ChainLinkModelCopyWithImpl<$Res, _$ChainLinkModelImpl>
    implements _$$ChainLinkModelImplCopyWith<$Res> {
  __$$ChainLinkModelImplCopyWithImpl(
      _$ChainLinkModelImpl _value, $Res Function(_$ChainLinkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolvesTo = null,
    Object? pokemonName = null,
  }) {
    return _then(_$ChainLinkModelImpl(
      evolvesTo: null == evolvesTo
          ? _value._evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<ChainLinkModel>,
      pokemonName: null == pokemonName
          ? _value.pokemonName
          : pokemonName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ChainLinkModelImpl implements _ChainLinkModel {
  const _$ChainLinkModelImpl(
      {@JsonKey(name: "evolves_to")
      required final List<ChainLinkModel> evolvesTo,
      @_PokemonNameConverter()
      @JsonKey(name: "species")
      required this.pokemonName})
      : _evolvesTo = evolvesTo;

  factory _$ChainLinkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainLinkModelImplFromJson(json);

  final List<ChainLinkModel> _evolvesTo;
  @override
  @JsonKey(name: "evolves_to")
  List<ChainLinkModel> get evolvesTo {
    if (_evolvesTo is EqualUnmodifiableListView) return _evolvesTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolvesTo);
  }

  @override
  @_PokemonNameConverter()
  @JsonKey(name: "species")
  final String pokemonName;

  @override
  String toString() {
    return 'ChainLinkModel(evolvesTo: $evolvesTo, pokemonName: $pokemonName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainLinkModelImpl &&
            const DeepCollectionEquality()
                .equals(other._evolvesTo, _evolvesTo) &&
            (identical(other.pokemonName, pokemonName) ||
                other.pokemonName == pokemonName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_evolvesTo), pokemonName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainLinkModelImplCopyWith<_$ChainLinkModelImpl> get copyWith =>
      __$$ChainLinkModelImplCopyWithImpl<_$ChainLinkModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainLinkModelImplToJson(
      this,
    );
  }
}

abstract class _ChainLinkModel implements ChainLinkModel {
  const factory _ChainLinkModel(
      {@JsonKey(name: "evolves_to")
      required final List<ChainLinkModel> evolvesTo,
      @_PokemonNameConverter()
      @JsonKey(name: "species")
      required final String pokemonName}) = _$ChainLinkModelImpl;

  factory _ChainLinkModel.fromJson(Map<String, dynamic> json) =
      _$ChainLinkModelImpl.fromJson;

  @override
  @JsonKey(name: "evolves_to")
  List<ChainLinkModel> get evolvesTo;
  @override
  @_PokemonNameConverter()
  @JsonKey(name: "species")
  String get pokemonName;
  @override
  @JsonKey(ignore: true)
  _$$ChainLinkModelImplCopyWith<_$ChainLinkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
