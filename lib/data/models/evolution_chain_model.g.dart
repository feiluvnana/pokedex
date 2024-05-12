// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_chain_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EvolutionChainModelImpl _$$EvolutionChainModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EvolutionChainModelImpl(
      chain: ChainLinkModel.fromJson(json['chain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EvolutionChainModelImplToJson(
        _$EvolutionChainModelImpl instance) =>
    <String, dynamic>{
      'chain': instance.chain.toJson(),
    };

_$ChainLinkModelImpl _$$ChainLinkModelImplFromJson(Map<String, dynamic> json) =>
    _$ChainLinkModelImpl(
      evolvesTo: (json['evolves_to'] as List<dynamic>)
          .map((e) => ChainLinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pokemonName: const _PokemonNameConverter()
          .fromJson(json['species'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChainLinkModelImplToJson(
        _$ChainLinkModelImpl instance) =>
    <String, dynamic>{
      'evolves_to': instance.evolvesTo.map((e) => e.toJson()).toList(),
      'species': const _PokemonNameConverter().toJson(instance.pokemonName),
    };
