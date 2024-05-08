import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/data/repositories/poke_news_repository_impl.dart';
import 'package:test_/domain/entities/poke_news_entity.dart';

final pokeNewsUsecaseProvider = Provider<PokeNewsUsecase>(
    (ref) => PokeNewsUsecaseImpl(repo: ref.watch(pokeNewsRepositoryProvider)));

abstract class PokeNewsUsecase {
  Future<List<PokeNewsEntity>> readNews({required int page});
}

class PokeNewsUsecaseImpl extends PokeNewsUsecase {
  final PokeNewsRepository repo;

  PokeNewsUsecaseImpl({required this.repo});

  @override
  Future<List<PokeNewsEntity>> readNews({required int page}) {
    return repo.readNews(page: page);
  }
}
