import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/constant.dart';
import 'package:pokedex/core/extensions.dart';
import 'package:pokedex/data/sources/api/pokeapi.dart';
import 'package:pokedex/domain/entities/ability_entity.dart';

final abilityRepositoryProvider = Provider<AbilityRepository>(
    (ref) => AbilityRepositoryImpl(client: ref.watch(pokeApiProvider)));

abstract class AbilityRepository {
  Future<List<String>> readAbilitiesName({required int page});
  Future<AbilityEntity> readAbility({required String name});
}

class AbilityRepositoryImpl extends AbilityRepository {
  final PokeApi client;
  AbilityRepositoryImpl({required this.client});

  @override
  Future<List<String>> readAbilitiesName({required int page}) async {
    final paginationData = await client
        .getAbilitiesPaginationData((page - 1) * tPokeApiPaginationLimit);
    return paginationData.results.map((e) => e["name"].toString()).toList();
  }

  @override
  Future<AbilityEntity> readAbility({required String name}) {
    return client.getAbility(name.toLowerCase()).then((model) => AbilityEntity(
        name: model.name.allFirstLettersUpper(separator: "-", delimiter: " "),
        fullEffect: model.effect.$1.noNewLine(),
        shortEffect: model.effect.$2.noNewLine(),
        description: model.description,
        generation: model.generation.split("-").last.toUpperCase()));
  }
}
