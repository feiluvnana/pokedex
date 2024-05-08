import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/data/sources/api/pokenew_api.dart';
import 'package:test_/domain/entities/news_entity.dart';

final newsRepositoryProvider = Provider<NewsRepository>(
    (ref) => NewsRepositoryImpl(client: ref.watch(restClientProvider)));

abstract class NewsRepository {
  Future<List<NewsEntity>> readAllNews({required int page});
}

class NewsRepositoryImpl extends NewsRepository {
  final RestClient client;
  NewsRepositoryImpl({required this.client});

  @override
  Future<List<NewsEntity>> readAllNews({required int page}) {
    return client.getNews(page).then((value) => value
        .map((e) => NewsEntity(
            cover: e.cover,
            title: e.title,
            content: e.content,
            createdAt: e.createdAt))
        .toList());
  }
}
