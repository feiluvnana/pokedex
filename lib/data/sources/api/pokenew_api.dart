import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_/data/models/news_model.dart';

part 'pokenew_api.g.dart';

@RestApi(baseUrl: "https://663b2b60fee6744a6ea0952e.mockapi.io/api/v1/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/news')
  Future<List<NewsModel>> getNews(@Query("p") int page,
      [@Query("l") int limit = tApiPaginationLimit]);
}

final restClientProvider = Provider((ref) => RestClient(Dio()));

const tApiPaginationLimit = 10;
