import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/constant.dart';
import 'package:pokedex/core/extensions.dart';
import 'package:pokedex/data/repositories/ability_repository_impl.dart';
import 'package:pokedex/domain/entities/ability_entity.dart';
import 'package:pokedex/domain/entities/ability_filter_entity.dart';

final getAbilitiesProvider = FutureProvider.autoDispose
    .family<List<AbilityEntity>, (int, List<AbilityFilterEntity>)>(
        (ref, params) async {
  ref.cacheFor(const Duration(minutes: 5));
  var abilities = await Future.wait(await ref
      .watch(abilityRepositoryProvider)
      .readAbilitiesName(page: params.$1)
      .then(
          (list) => list.map((e) => ref.watch(getAbilityProvider(e).future))));

  List<AbilityEntity> result = [];

  switch (params.$2.length) {
    case > 0:
      for (var filter in params.$2) {
        if (filter is AbilityGenerationFilter) {
          result.addAll(
              abilities.where((e) => e.generation == filter.generation));
        }
      }

      if (result.isEmpty &&
          abilities.any((ability) =>
              tGenerationNumber[ability.generation]! >
              params.$2
                  .map((e) => tGenerationNumber[e.generation]!)
                  .reduce((a, b) => max(a, b)))) return [AbilityEntity.empty()];
    default:
      return abilities;
  }

  return result;
});

final getAbilityProvider =
    FutureProvider.autoDispose.family<AbilityEntity, String>((ref, name) {
  ref.cacheFor(const Duration(minutes: 5));
  return ref.watch(abilityRepositoryProvider).readAbility(name: name);
});
