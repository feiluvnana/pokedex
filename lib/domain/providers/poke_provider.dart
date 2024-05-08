import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/domain/entities/pokemon_entity.dart';
import 'package:test_/domain/usecases/poke_usecase.dart';

final getPokemonsProvider =
    FutureProvider.family<List<PokemonEntity>, int>((ref, page) {
  return ref.watch(pokeUsecaseProvider).readPokemons(page: page);
});
