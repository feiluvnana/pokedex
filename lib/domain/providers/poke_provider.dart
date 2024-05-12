import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/core/extensions.dart';
import 'package:test_/data/repositories/poke_repository_impl.dart';
import 'package:test_/domain/entities/evolution_chain_entity.dart';
import 'package:test_/domain/entities/pokemon_entity.dart';
import 'package:test_/domain/entities/pokemon_species_entity.dart';
import 'package:test_/domain/entities/pokemon_types_entity.dart';

final getPokemonsProvider =
    FutureProvider.autoDispose.family<List<PokemonEntity>, int>((ref, page) {
  ref.cacheFor(const Duration(minutes: 5));
  return ref.watch(pokeRepositoryProvider).readPokemons(page: page);
});

final getPokemonSpeciesProvider = FutureProvider.autoDispose
    .family<PokemonSpeciesEntity, String>((ref, name) {
  ref.cacheFor(const Duration(minutes: 5));
  return ref
      .watch(pokeRepositoryProvider)
      .readPokemonSpecies(name: name.toLowerCase());
});

final getPokemonTypesProvider = FutureProvider.autoDispose
    .family<PokemonTypesEntity, List<String>>((ref, types) {
  ref.cacheFor(const Duration(minutes: 5));
  return ref
      .watch(pokeRepositoryProvider)
      .readPokemonTypes(types: types.map((e) => e.toLowerCase()).toList());
});

final getEvolutionChainProvider = FutureProvider.autoDispose
    .family<EvolutionChainEntity, String>((ref, name) async {
  ref.cacheFor(const Duration(minutes: 5));

  return ref.watch(pokeRepositoryProvider).readEvolutionChain(
      id: (await ref.watch(getPokemonSpeciesProvider(name).future))
          .evolutionChainId);
});
