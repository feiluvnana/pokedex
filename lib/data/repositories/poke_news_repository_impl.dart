import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/data/sources/api/pokenews_api.dart';
import 'package:pokedex/domain/entities/poke_news_entity.dart';

final pokeNewsRepositoryProvider = Provider<PokeNewsRepository>(
    (ref) => PokeNewsRepositoryImpl(client: ref.watch(pokeNewsApiProvider)));

abstract class PokeNewsRepository {
  Future<List<PokeNewsEntity>> readNews({required int page});
}

class PokeNewsRepositoryImpl extends PokeNewsRepository {
  final PokeNewsApi client;
  PokeNewsRepositoryImpl({required this.client});

  @override
  Future<List<PokeNewsEntity>> readNews({required int page}) {
    return client.getNews(page).then((value) => value
        .map((e) => PokeNewsEntity(
            cover: e.cover,
            title: e.title,
            content: e.content,
            createdAt: e.createdAt))
        .toList());
  }
}
