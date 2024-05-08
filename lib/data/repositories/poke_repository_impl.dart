import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/data/sources/api/pokeapi.dart';
import 'package:test_/domain/entities/pokemon_entity.dart';

final pokeRepositoryProvider = Provider<PokeRepository>(
    (ref) => NewsRepositoryImpl(client: ref.watch(pokeApiProvider)));

abstract class PokeRepository {
  Future<List<PokemonEntity>> readPokemons({required int page});
}

class NewsRepositoryImpl extends PokeRepository {
  final PokeApi client;
  NewsRepositoryImpl({required this.client});

  @override
  Future<List<PokemonEntity>> readPokemons({required int page}) async {
    final paginationData = await client
        .getPokemonsPaginationData((page - 1) * tPokeApiPaginationLimit);
    final pokemonList = <PokemonEntity>[];
    for (var e in paginationData.results) {
      final model = await client.getPokemon(e["name"]);
      pokemonList.add(PokemonEntity(
          id: model.id,
          name: model.name,
          types: model.types,
          avatar: model.avatar));
    }
    return pokemonList;
  }
}
