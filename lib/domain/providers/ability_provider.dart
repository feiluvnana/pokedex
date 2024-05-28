import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/extensions.dart';
import 'package:pokedex/core/indexes.dart';
import 'package:pokedex/data/repositories/ability_repository_impl.dart';
import 'package:pokedex/domain/entities/ability_entity.dart';
import 'package:pokedex/domain/entities/ability_filter_entity.dart';

final getAbilitiesWithFiltersProvider = FutureProvider.autoDispose
    .family<List<AbilityEntity>, List<AbilityFilterEntity>>(
        (ref, filters) async {
  ref.cacheFor(const Duration(minutes: 5));

  List<AbilityEntity> result = [];

  for (var filter in filters) {
    for (var MapEntry<String, int>(key: key, value: value)
        in tAbilityIndexes.entries) {
      if (key.contains(filter.generation)) {
        for (var i = value;; i++) {
          var abilities = await ref.read(getAbilitiesProvider(i).future);
          abilities = abilities
              .where((e) => e.generation == filter.generation)
              .toList();
          if (abilities.isEmpty) break;
          result.addAll(abilities);
        }
      }
    }
  }

  return result;
});

final getAbilitiesProvider = FutureProvider.autoDispose
    .family<List<AbilityEntity>, int>((ref, page) async {
  ref.cacheFor(const Duration(minutes: 5));
  return Future.wait(await ref
      .watch(abilityRepositoryProvider)
      .readAbilitiesName(page: page)
      .then(
          (list) => list.map((e) => ref.watch(getAbilityProvider(e).future))));
});

final getAbilityProvider =
    FutureProvider.autoDispose.family<AbilityEntity, String>((ref, name) {
  ref.cacheFor(const Duration(minutes: 5));
  return ref.watch(abilityRepositoryProvider).readAbility(name: name);
});
