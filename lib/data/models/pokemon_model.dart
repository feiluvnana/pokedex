// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part "pokemon_model.freezed.dart";
part "pokemon_model.g.dart";

@freezed
class PokemonModel with _$PokemonModel {
  const factory PokemonModel(
      {required int id,
      required String name,
      @JsonKey(name: "sprites") @_AvatarConverter() String? avatar,
      @_TypesConverter() required List<String> types}) = _PokemonModel;

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
