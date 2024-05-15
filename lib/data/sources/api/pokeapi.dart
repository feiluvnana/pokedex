// ignore_for_file: invalid_annotation_target

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_/core/constant.dart';
import 'package:test_/data/models/ability_model.dart';
import 'package:test_/data/models/evolution_chain_model.dart';
import 'package:test_/data/models/pokemon_model.dart';
import 'package:test_/data/models/pokemon_species_model.dart';
import 'package:test_/data/models/pokemon_types_model.dart';

part "pokeapi.freezed.dart";
part 'pokeapi.g.dart';

@RestApi(baseUrl: "https://pokeapi.co/api/v2", parser: Parser.FlutterCompute)
abstract class PokeApi {
  factory PokeApi(Dio dio, {String baseUrl}) = _PokeApi;

  @GET('/pokemon')
  Future<PaginationResponseData> getPokemonsPaginationData(
      @Query("offset") int offset,
      [@Query("limit") int limit = tPokeApiPaginationLimit]);

  @GET('/pokemon/{name}')
  Future<PokemonModel> getPokemon(@Path("name") String name);

  @GET('/pokemon-species/{name}')
  Future<PokemonSpeciesModel> getPokemonSpecies(@Path("name") String name);

  @GET('/type/{name}')
  Future<PokemonTypesModel> getType(@Path("name") String name);

  @GET('/evolution-chain/{id}')
  Future<EvolutionChainModel> getEvolutionChain(@Path("id") String id);

  @GET('/ability/{name}')
  Future<AbilityModel> getAbility(@Path("name") String name);

  @GET('/ability')
  Future<PaginationResponseData> getAbilitiesPaginationData(
      @Query("offset") int offset,
      [@Query("limit") int limit = tPokeApiPaginationLimit]);
}

final pokeApiProvider = Provider((ref) => PokeApi(Dio()
  ..interceptors.add(DioCacheInterceptor(
      options: CacheOptions(
    store: HiveCacheStore(null),
    policy: CachePolicy.request,
    hitCacheOnErrorExcept: [401, 403],
    maxStale: const Duration(days: 7),
    priority: CachePriority.high,
    keyBuilder: CacheOptions.defaultCacheKeyBuilder,
  )))));

@freezed
class PaginationResponseData with _$PaginationResponseData {
  const factory PaginationResponseData({required List results}) =
      _PaginationResponseData;

  factory PaginationResponseData.fromJson(Map<String, dynamic> json) =>
      _$PaginationResponseDataFromJson(json);
}

EvolutionChainModel deserializeEvolutionChainModel(Map<String, dynamic> json) =>
    EvolutionChainModel.fromJson(json);

Map<String, dynamic> serializeEvolutionChainModel(EvolutionChainModel model) =>
    model.toJson();

AbilityModel deserializeAbilityModel(Map<String, dynamic> json) =>
    AbilityModel.fromJson(json);

Map<String, dynamic> serializeAbilityModel(AbilityModel model) =>
    model.toJson();

PokemonSpeciesModel deserializePokemonSpeciesModel(Map<String, dynamic> json) =>
    PokemonSpeciesModel.fromJson(json);

Map<String, dynamic> serializePokemonSpeciesModel(PokemonSpeciesModel model) =>
    model.toJson();

PaginationResponseData deserializePaginationResponseData(
        Map<String, dynamic> json) =>
    PaginationResponseData.fromJson(json);

Map<String, dynamic> serializePaginationResponseData(
        PaginationResponseData model) =>
    model.toJson();

PokemonModel deserializePokemonModel(Map<String, dynamic> json) =>
    PokemonModel.fromJson(json);

Map<String, dynamic> serializePokemonModel(PokemonModel model) =>
    model.toJson();

PokemonTypesModel deserializePokemonTypesModel(Map<String, dynamic> json) =>
    PokemonTypesModel.fromJson(json);

Map<String, dynamic> serializePokemonTypesModel(PokemonTypesModel model) =>
    model.toJson();
