// ignore_for_file: invalid_annotation_target

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_/data/models/pokemon_model.dart';
import 'package:test_/data/models/pokemon_species_model.dart';
import 'package:test_/data/models/pokemon_types_model.dart';

part "pokeapi.freezed.dart";
part 'pokeapi.g.dart';

@RestApi(baseUrl: "https://pokeapi.co/api/v2/", parser: Parser.FlutterCompute)
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
}

final pokeApiProvider = Provider((ref) => PokeApi(Dio()));

const tPokeApiPaginationLimit = 10;

@freezed
class PaginationResponseData with _$PaginationResponseData {
  const factory PaginationResponseData({required List results}) =
      _PaginationResponseData;

  factory PaginationResponseData.fromJson(Map<String, dynamic> json) =>
      _$PaginationResponseDataFromJson(json);
}

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
