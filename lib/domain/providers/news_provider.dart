import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/domain/entities/news_entity.dart';
import 'package:test_/domain/usecases/news_usecase.dart';

final getNewsProvider =
    FutureProvider.autoDispose.family<List<NewsEntity>, int>((ref, page) {
  return ref.watch(newsUsecaseProvider).readAllNews(page: page);
});
