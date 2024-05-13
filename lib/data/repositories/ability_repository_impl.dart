import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/core/constant.dart';
import 'package:test_/core/extensions.dart';
import 'package:test_/data/sources/api/pokeapi.dart';
import 'package:test_/domain/entities/ability_entity.dart';

final abilityRepositoryProvider = Provider<AbilityRepository>(
    (ref) => AbilityRepositoryImpl(client: ref.watch(pokeApiProvider)));

abstract class AbilityRepository {
  Future<List<AbilityEntity>> readAbilities({required int page});
  Future<AbilityEntity> readAbility({required String name});
}

class AbilityRepositoryImpl extends AbilityRepository {
  final PokeApi client;
  AbilityRepositoryImpl({required this.client});

  @override
  Future<List<AbilityEntity>> readAbilities({required int page}) async {
    final paginationData = await client
        .getAbilitiesPaginationData((page - 1) * tPokeApiPaginationLimit);
    return Future.wait(paginationData.results.map((e) => client
        .getAbility(e["name"])
        .then((model) => AbilityEntity(
            name:
                model.name.allFirstLettersUpper(separator: "-", delimiter: " "),
            fullEffect: model.effect.$1.noNewLine(),
            shortEffect: model.effect.$2.noNewLine(),
            description: model.description,
            generation: model.generation.split("-").last.toUpperCase()))));
  }

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
