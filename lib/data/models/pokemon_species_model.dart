// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part "pokemon_species_model.freezed.dart";
part "pokemon_species_model.g.dart";

@freezed
class PokemonSpeciesModel with _$PokemonSpeciesModel {
  const factory PokemonSpeciesModel(
      {@_EggGroupsConverter()
      @JsonKey(name: "egg_groups")
      required List<String> eggGroups,
      @JsonKey(name: "gender_rate") required int genderRate,
      @JsonKey(name: "flavor_text_entries")
      @_DescriptionConverter()
      required String description,
      @JsonKey(name: "evolution_chain")
      @_EvolutionChainUrlConverter()
      required String evolutionChainUrl}) = _PokemonSpeciesModel;

  factory PokemonSpeciesModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesModelFromJson(json);
}

class _EggGroupsConverter extends JsonConverter<List<String>, List<dynamic>> {
  const _EggGroupsConverter();

  @override
  List<String> fromJson(List json) {
    return json.map((e) => e["name"].toString()).toList();
  }

  @override
  List toJson(List<String> object) {
    throw UnimplementedError();
  }
}

class _EvolutionChainUrlConverter
    extends JsonConverter<String, Map<String, dynamic>> {
  const _EvolutionChainUrlConverter();

  @override
  String fromJson(Map<String, dynamic> json) {
    return json["url"];
  }

  @override
  Map<String, dynamic> toJson(String object) {
    throw UnimplementedError();
  }
}

class _DescriptionConverter extends JsonConverter<String, List<dynamic>> {
  const _DescriptionConverter();

  @override
  String fromJson(List json) {
    return json
        .firstWhere((e) => e["language"]["name"] == "en")["flavor_text"]
        .toString();
  }

  @override
  List toJson(String object) {
    throw UnimplementedError();
  }
}
