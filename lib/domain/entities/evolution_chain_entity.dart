import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';

part "evolution_chain_entity.freezed.dart";

@freezed
class EvolutionChainEntity with _$EvolutionChainEntity {
  const factory EvolutionChainEntity({required ChainLinkEntity chain}) =
      _EvolutionChainEntity;
}

@freezed
class ChainLinkEntity with _$ChainLinkEntity {
  const factory ChainLinkEntity(
      {required PokemonEntity pokemon,
      required List<ChainLinkEntity> evolvesTo}) = _ChainLinkEntity;
}
