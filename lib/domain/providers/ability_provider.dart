import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/core/extensions.dart';
import 'package:test_/data/repositories/ability_repository_impl.dart';
import 'package:test_/domain/entities/ability_entity.dart';

final getAbilityProvider =
    FutureProvider.autoDispose.family<AbilityEntity, String>((ref, name) {
  ref.cacheFor(const Duration(minutes: 5));
  return ref.watch(abilityRepositoryProvider).readAbility(name: name);
});
