import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/data/repositories/poke_news_repository_impl.dart';
import 'package:test_/domain/entities/poke_news_entity.dart';

final getPokeNewsProvider =
    FutureProvider.family<List<PokeNewsEntity>, int>((ref, page) {
  return ref.watch(pokeNewsRepositoryProvider).readNews(page: page);
});
