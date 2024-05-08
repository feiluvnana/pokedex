import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/data/repositories/poke_repository_impl.dart';
import 'package:test_/domain/entities/pokemon_entity.dart';

final pokeUsecaseProvider = Provider<PokeUsecase>(
    (ref) => PokeUsecaseImpl(repo: ref.watch(pokeRepositoryProvider)));

abstract class PokeUsecase {
  Future<List<PokemonEntity>> readPokemons({required int page});
}

class PokeUsecaseImpl extends PokeUsecase {
  final PokeRepository repo;

  PokeUsecaseImpl({required this.repo});

  @override
  Future<List<PokemonEntity>> readPokemons({required int page}) {
    return repo.readPokemons(page: page);
  }
}
