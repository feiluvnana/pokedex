import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/constant.dart';
import 'package:pokedex/core/extensions.dart';
import 'package:pokedex/data/models/evolution_chain_model.dart';
import 'package:pokedex/data/models/pokemon_model.dart';
import 'package:pokedex/data/sources/api/pokeapi.dart';
import 'package:pokedex/domain/entities/evolution_chain_entity.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/domain/entities/pokemon_species_entity.dart';
import 'package:pokedex/domain/entities/pokemon_types_entity.dart';

final pokeRepositoryProvider = Provider<PokeRepository>(
    (ref) => NewsRepositoryImpl(client: ref.watch(pokeApiProvider)));

abstract class PokeRepository {
  Future<List<PokemonEntity>> readPokemons({required int page});

  Future<PokemonSpeciesEntity> readPokemonSpecies({required String name});

  Future<PokemonTypesEntity> readPokemonTypes({required List<String> types});

  Future<EvolutionChainEntity> readEvolutionChain({required String id});
}

class NewsRepositoryImpl extends PokeRepository {
  final PokeApi client;
  NewsRepositoryImpl({required this.client});

  @override
  Future<List<PokemonEntity>> readPokemons({required int page}) async {
    final paginationData = await client
        .getPokemonsPaginationData((page - 1) * tPokeApiPaginationLimit);
    return Future.wait(paginationData.results.map((e) => client
        .getPokemon(e["name"])
        .then((model) => _pokemonModelToPokemonEntity(model))));
  }

  PokemonEntity _pokemonModelToPokemonEntity(PokemonModel model) {
    return PokemonEntity(
        id: "#${model.id.toString().padLeft(4, "0")}",
        name: model.name.firstLetterUpper(),
        types: model.types.mapFirstLetterUpper().toList(),
        avatar: model.avatar,
        heightInCm: model.height * 10,
        weightInKg: model.weight / 10,
        moves: model.moves.mapFirstLetterUpper().toList(),
        abilities: model.abilities.mapFirstLetterUpper().toList(),
        stats: [
          ...model.stats,
          model.stats.reduce((a, b) => ("total", a.$2 + b.$2))
        ]);
  }

  @override
  Future<PokemonSpeciesEntity> readPokemonSpecies(
      {required String name}) async {
    return client.getPokemonSpecies(name).then((model) => PokemonSpeciesEntity(
        eggGroups: model.eggGroups.mapFirstLetterUpper().toList(),
        maleInPercentage: model.genderRate == -1
            ? model.genderRate.toDouble()
            : 12.5 * (8 - model.genderRate),
        description: model.description.noNewLine(),
        evolutionChainId: model.evolutionChainUrl
            .split("/")
            .elementAt(model.evolutionChainUrl.split("/").length - 2)));
  }

  @override
  Future<PokemonTypesEntity> readPokemonTypes(
      {required List<String> types}) async {
    var models = await Future.wait(types.map((e) => client.getType(e)));
    var attackRelation = <(String, double)>[];
    var defenseRelation = <(String, double)>[];
    for (var m in models) {
      for (var e in m.damageRelations.doubleDamageFrom) {
        var currentType = e.firstLetterUpper();
        if (defenseRelation.any((e) => e.$1 == currentType)) {
          var currentValue =
              defenseRelation.firstWhere((e) => e.$1 == currentType);
          defenseRelation.remove(currentValue);
          defenseRelation.add((currentValue.$1, currentValue.$2 * 2));
        } else {
          defenseRelation.add((currentType, 2));
        }
      }
      for (var e in m.damageRelations.halfDamageFrom) {
        var currentType = e.firstLetterUpper();
        if (defenseRelation.any((e) => e.$1 == currentType)) {
          var currentValue =
              defenseRelation.firstWhere((e) => e.$1 == currentType);
          defenseRelation.remove(currentValue);
          defenseRelation.add((currentValue.$1, currentValue.$2 * 0.5));
        } else {
          defenseRelation.add((currentType, 0.5));
        }
      }
      for (var e in m.damageRelations.noDamageFrom) {
        var currentType = e.firstLetterUpper();
        if (defenseRelation.any((e) => e.$1 == currentType)) {
          var currentValue =
              defenseRelation.firstWhere((e) => e.$1 == currentType);
          defenseRelation.remove(currentValue);
          defenseRelation.add((currentType, 0));
        } else {
          defenseRelation.add((currentType, 0));
        }
      }
      for (var e in m.damageRelations.doubleDamageTo) {
        var currentType = e.firstLetterUpper();
        if (attackRelation.any((e) => e.$1 == currentType)) {
          var currentValue =
              attackRelation.firstWhere((e) => e.$1 == currentType);
          attackRelation.remove(currentValue);
          attackRelation.add((currentValue.$1, currentValue.$2 * 2));
        } else {
          attackRelation.add((currentType, 2));
        }
      }
      for (var e in m.damageRelations.halfDamageTo) {
        var currentType = e.firstLetterUpper();
        if (attackRelation.any((e) => e.$1 == currentType)) {
          var currentValue =
              attackRelation.firstWhere((e) => e.$1 == currentType);
          attackRelation.remove(currentValue);
          attackRelation.add((currentValue.$1, currentValue.$2 * 0.5));
        } else {
          attackRelation.add((currentType, 0.5));
        }
      }
      for (var e in m.damageRelations.noDamageTo) {
        var currentType = e.firstLetterUpper();
        if (attackRelation.any((e) => e.$1 == currentType)) {
          var currentValue =
              attackRelation.firstWhere((e) => e.$1 == currentType);
          attackRelation.remove(currentValue);
          attackRelation.add((currentType, 0));
        } else {
          attackRelation.add((currentType, 0));
        }
      }
    }
    return PokemonTypesEntity(
        attackRelation: attackRelation, defenseRelation: defenseRelation);
  }

  @override
  Future<EvolutionChainEntity> readEvolutionChain({required String id}) async {
    final evolutionChainData = await client.getEvolutionChain(id);
    return EvolutionChainEntity(
        chain: await _chainModelToChainLink(evolutionChainData.chain));
  }

  Future<ChainLinkEntity> _chainModelToChainLink(ChainLinkModel model) async {
    return ChainLinkEntity(
        pokemon: _pokemonModelToPokemonEntity(
            await client.getPokemon(model.pokemonName)),
        evolvesTo: await Future.wait(model.evolvesTo
            .map((e) async => _chainModelToChainLink(e))
            .toList()));
  }
}
