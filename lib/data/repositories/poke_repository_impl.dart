import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/data/sources/api/pokeapi.dart';
import 'package:test_/domain/entities/pokemon_entity.dart';
import 'package:test_/domain/entities/pokemon_species_entity.dart';

final pokeRepositoryProvider = Provider<PokeRepository>(
    (ref) => NewsRepositoryImpl(client: ref.watch(pokeApiProvider)));

abstract class PokeRepository {
  Future<List<PokemonEntity>> readPokemons({required int page});

  Future<PokemonSpeciesEntity> readPokemonSpecies({required String name});
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
        .then((model) => PokemonEntity(
            id: "#${model.id.toString().padLeft(4, "0")}",
            name: "${model.name[0].toUpperCase()}${model.name.substring(1)}",
            types: model.types
                .map((e) => "${e[0].toUpperCase()}${e.substring(1)}")
                .toList(),
            avatar: model.avatar,
            heightInCm: model.height * 10,
            weightInKg: model.weight / 10))));
  }

  @override
  Future<PokemonSpeciesEntity> readPokemonSpecies(
      {required String name}) async {
    return client.getPokemonSpecies(name.toLowerCase()).then((model) =>
        PokemonSpeciesEntity(
            eggGroups: model.eggGroups
                .map((e) => "${e[0].toUpperCase()}${e.substring(1)}")
                .toList(),
            maleInPercentage: model.genderRate == -1
                ? model.genderRate.toDouble()
                : 12.5 * (8 - model.genderRate),
            description: model.description));
  }
}
