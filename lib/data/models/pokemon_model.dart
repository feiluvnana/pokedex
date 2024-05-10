// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part "pokemon_model.freezed.dart";
part "pokemon_model.g.dart";

@freezed
class PokemonModel with _$PokemonModel {
  const factory PokemonModel(
          {required int id,
          required String name,
          required int weight,
          required int height,
          @JsonKey(name: "sprites") @_AvatarConverter() String? avatar,
          @_TypesConverter() required List<String> types,
          @_StatsConverter() required List<(String name, int value)> stats}) =
      _PokemonModel;

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);
}

class _AvatarConverter extends JsonConverter<String?, Map<String, dynamic>> {
  const _AvatarConverter();

  @override
  String? fromJson(Map<String, dynamic> json) {
    return json["other"]?["official-artwork"]?["front_default"]?.toString();
  }

  @override
  Map<String, dynamic> toJson(String? object) {
    throw UnimplementedError();
  }
}

class _TypesConverter extends JsonConverter<List<String>, List<dynamic>> {
  const _TypesConverter();

  @override
  List<String> fromJson(List json) {
    return json.map((e) => e["type"]?["name"].toString() ?? "empty").toList();
  }

  @override
  List toJson(List<String> object) {
    throw UnimplementedError();
  }
}

class _StatsConverter
    extends JsonConverter<List<(String name, int value)>, List<dynamic>> {
  const _StatsConverter();

  @override
  List<(String, int)> fromJson(List json) {
    return json
        .map((e) => (
              e["stat"]["name"].toString(),
              int.parse(e["base_stat"].toString())
            ))
        .toList();
  }

  @override
  List toJson(List<(String, int)> object) {
    throw UnimplementedError();
  }
}
