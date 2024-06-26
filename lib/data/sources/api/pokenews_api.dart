import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:pokedex/data/models/poke_news_model.dart';

part 'pokenews_api.g.dart';

@RestApi(baseUrl: "https://663b2b60fee6744a6ea0952e.mockapi.io/api/v1/")
abstract class PokeNewsApi {
  factory PokeNewsApi(Dio dio, {String baseUrl}) = _PokeNewsApi;

  @GET('/news')
  Future<List<PokeNewsModel>> getNews(@Query("p") int page,
      [@Query("l") int limit = tPokeNewsApiPaginationLimit]);
}

final pokeNewsApiProvider = Provider((ref) => PokeNewsApi(Dio()));

const tPokeNewsApiPaginationLimit = 10;
