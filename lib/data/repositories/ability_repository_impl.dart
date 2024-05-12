import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/data/sources/api/pokeapi.dart';
import 'package:test_/domain/entities/ability_entity.dart';

final abilityRepositoryProvider = Provider<AbilityRepository>(
    (ref) => AbilityRepositoryImpl(client: ref.watch(pokeApiProvider)));

abstract class AbilityRepository {
  Future<AbilityEntity> readAbility({required String name});
}

class AbilityRepositoryImpl extends AbilityRepository {
  final PokeApi client;
  AbilityRepositoryImpl({required this.client});

  @override
  Future<AbilityEntity> readAbility({required String name}) {
    return client.getAbility(name.toLowerCase()).then((model) => AbilityEntity(
        name: model.name,
        fullEffect: model.effect.$1,
        shortEffect: model.effect.$2,
        description: model.description,
        generation: model.generation));
  }
}
