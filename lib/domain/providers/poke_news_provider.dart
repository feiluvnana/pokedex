import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/domain/entities/poke_news_entity.dart';
import 'package:test_/domain/usecases/poke_news_usecase.dart';

final getPokeNewsProvider =
    FutureProvider.family<List<PokeNewsEntity>, int>((ref, page) {
  return ref.watch(pokeNewsUsecaseProvider).readNews(page: page);
});
