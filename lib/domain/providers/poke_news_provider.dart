import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/extensions.dart';
import 'package:pokedex/data/repositories/poke_news_repository_impl.dart';
import 'package:pokedex/domain/entities/poke_news_entity.dart';

final getPokeNewsProvider =
    FutureProvider.autoDispose.family<List<PokeNewsEntity>, int>((ref, page) {
  ref.cacheFor(const Duration(minutes: 1));
  return ref.watch(pokeNewsRepositoryProvider).readNews(page: page);
});
