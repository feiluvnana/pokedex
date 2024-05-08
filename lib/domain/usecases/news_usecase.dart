import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/data/repositories/news_repository_impl.dart';
import 'package:test_/domain/entities/news_entity.dart';

final newsUsecaseProvider = Provider<NewsUsecase>(
    (ref) => NewsUsecaseImpl(repo: ref.watch(newsRepositoryProvider)));

abstract class NewsUsecase {
  Future<List<NewsEntity>> readAllNews({required int page});
}

class NewsUsecaseImpl extends NewsUsecase {
  final NewsRepository repo;

  NewsUsecaseImpl({required this.repo});

  @override
  Future<List<NewsEntity>> readAllNews({required int page}) {
    return repo.readAllNews(page: page);
  }
}
