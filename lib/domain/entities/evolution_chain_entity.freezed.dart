// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_chain_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EvolutionChainEntity {
  ChainLinkEntity get chain => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EvolutionChainEntityCopyWith<EvolutionChainEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolutionChainEntityCopyWith<$Res> {
  factory $EvolutionChainEntityCopyWith(EvolutionChainEntity value,
          $Res Function(EvolutionChainEntity) then) =
      _$EvolutionChainEntityCopyWithImpl<$Res, EvolutionChainEntity>;
  @useResult
  $Res call({ChainLinkEntity chain});

  $ChainLinkEntityCopyWith<$Res> get chain;
}

/// @nodoc
class _$EvolutionChainEntityCopyWithImpl<$Res,
        $Val extends EvolutionChainEntity>
    implements $EvolutionChainEntityCopyWith<$Res> {
  _$EvolutionChainEntityCopyWithImpl(this._value, this._then);

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
              as ChainLinkEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChainLinkEntityCopyWith<$Res> get chain {
    return $ChainLinkEntityCopyWith<$Res>(_value.chain, (value) {
      return _then(_value.copyWith(chain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EvolutionChainEntityImplCopyWith<$Res>
    implements $EvolutionChainEntityCopyWith<$Res> {
  factory _$$EvolutionChainEntityImplCopyWith(_$EvolutionChainEntityImpl value,
          $Res Function(_$EvolutionChainEntityImpl) then) =
      __$$EvolutionChainEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChainLinkEntity chain});

  @override
  $ChainLinkEntityCopyWith<$Res> get chain;
}

/// @nodoc
class __$$EvolutionChainEntityImplCopyWithImpl<$Res>
    extends _$EvolutionChainEntityCopyWithImpl<$Res, _$EvolutionChainEntityImpl>
    implements _$$EvolutionChainEntityImplCopyWith<$Res> {
  __$$EvolutionChainEntityImplCopyWithImpl(_$EvolutionChainEntityImpl _value,
      $Res Function(_$EvolutionChainEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chain = null,
  }) {
    return _then(_$EvolutionChainEntityImpl(
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as ChainLinkEntity,
    ));
  }
}

/// @nodoc

class _$EvolutionChainEntityImpl implements _EvolutionChainEntity {
  const _$EvolutionChainEntityImpl({required this.chain});

  @override
  final ChainLinkEntity chain;

  @override
  String toString() {
    return 'EvolutionChainEntity(chain: $chain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvolutionChainEntityImpl &&
            (identical(other.chain, chain) || other.chain == chain));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvolutionChainEntityImplCopyWith<_$EvolutionChainEntityImpl>
      get copyWith =>
          __$$EvolutionChainEntityImplCopyWithImpl<_$EvolutionChainEntityImpl>(
              this, _$identity);
}

abstract class _EvolutionChainEntity implements EvolutionChainEntity {
  const factory _EvolutionChainEntity({required final ChainLinkEntity chain}) =
      _$EvolutionChainEntityImpl;

  @override
  ChainLinkEntity get chain;
  @override
  @JsonKey(ignore: true)
  _$$EvolutionChainEntityImplCopyWith<_$EvolutionChainEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChainLinkEntity {
  PokemonEntity get pokemon => throw _privateConstructorUsedError;
  List<ChainLinkEntity> get evolvesTo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChainLinkEntityCopyWith<ChainLinkEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainLinkEntityCopyWith<$Res> {
  factory $ChainLinkEntityCopyWith(
          ChainLinkEntity value, $Res Function(ChainLinkEntity) then) =
      _$ChainLinkEntityCopyWithImpl<$Res, ChainLinkEntity>;
  @useResult
  $Res call({PokemonEntity pokemon, List<ChainLinkEntity> evolvesTo});

  $PokemonEntityCopyWith<$Res> get pokemon;
}

/// @nodoc
class _$ChainLinkEntityCopyWithImpl<$Res, $Val extends ChainLinkEntity>
    implements $ChainLinkEntityCopyWith<$Res> {
  _$ChainLinkEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = null,
    Object? evolvesTo = null,
  }) {
    return _then(_value.copyWith(
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as PokemonEntity,
      evolvesTo: null == evolvesTo
          ? _value.evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<ChainLinkEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonEntityCopyWith<$Res> get pokemon {
    return $PokemonEntityCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChainLinkEntityImplCopyWith<$Res>
    implements $ChainLinkEntityCopyWith<$Res> {
  factory _$$ChainLinkEntityImplCopyWith(_$ChainLinkEntityImpl value,
          $Res Function(_$ChainLinkEntityImpl) then) =
      __$$ChainLinkEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PokemonEntity pokemon, List<ChainLinkEntity> evolvesTo});

  @override
  $PokemonEntityCopyWith<$Res> get pokemon;
}

/// @nodoc
class __$$ChainLinkEntityImplCopyWithImpl<$Res>
    extends _$ChainLinkEntityCopyWithImpl<$Res, _$ChainLinkEntityImpl>
    implements _$$ChainLinkEntityImplCopyWith<$Res> {
  __$$ChainLinkEntityImplCopyWithImpl(
      _$ChainLinkEntityImpl _value, $Res Function(_$ChainLinkEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = null,
    Object? evolvesTo = null,
  }) {
    return _then(_$ChainLinkEntityImpl(
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as PokemonEntity,
      evolvesTo: null == evolvesTo
          ? _value._evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<ChainLinkEntity>,
    ));
  }
}

/// @nodoc

class _$ChainLinkEntityImpl implements _ChainLinkEntity {
  const _$ChainLinkEntityImpl(
      {required this.pokemon, required final List<ChainLinkEntity> evolvesTo})
      : _evolvesTo = evolvesTo;

  @override
  final PokemonEntity pokemon;
  final List<ChainLinkEntity> _evolvesTo;
  @override
  List<ChainLinkEntity> get evolvesTo {
    if (_evolvesTo is EqualUnmodifiableListView) return _evolvesTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolvesTo);
  }

  @override
  String toString() {
    return 'ChainLinkEntity(pokemon: $pokemon, evolvesTo: $evolvesTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainLinkEntityImpl &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon) &&
            const DeepCollectionEquality()
                .equals(other._evolvesTo, _evolvesTo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pokemon, const DeepCollectionEquality().hash(_evolvesTo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainLinkEntityImplCopyWith<_$ChainLinkEntityImpl> get copyWith =>
      __$$ChainLinkEntityImplCopyWithImpl<_$ChainLinkEntityImpl>(
          this, _$identity);
}

abstract class _ChainLinkEntity implements ChainLinkEntity {
  const factory _ChainLinkEntity(
      {required final PokemonEntity pokemon,
      required final List<ChainLinkEntity> evolvesTo}) = _$ChainLinkEntityImpl;

  @override
  PokemonEntity get pokemon;
  @override
  List<ChainLinkEntity> get evolvesTo;
  @override
  @JsonKey(ignore: true)
  _$$ChainLinkEntityImplCopyWith<_$ChainLinkEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
