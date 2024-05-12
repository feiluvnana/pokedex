// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part "evolution_chain_model.freezed.dart";
part "evolution_chain_model.g.dart";

@freezed
class EvolutionChainModel with _$EvolutionChainModel {
  @JsonSerializable(explicitToJson: true)
  const factory EvolutionChainModel({required ChainLinkModel chain}) =
      _EvolutionChainModel;

  factory EvolutionChainModel.fromJson(Map<String, dynamic> json) =>
      _$EvolutionChainModelFromJson(json);
}

@freezed
class ChainLinkModel with _$ChainLinkModel {
  @JsonSerializable(explicitToJson: true)
  const factory ChainLinkModel(
      {@JsonKey(name: "evolves_to") required List<ChainLinkModel> evolvesTo,
      @_PokemonNameConverter()
      @JsonKey(name: "species")
      required String pokemonName}) = _ChainLinkModel;

  factory ChainLinkModel.fromJson(Map<String, dynamic> json) =>
      _$ChainLinkModelFromJson(json);
}

class _PokemonNameConverter
    extends JsonConverter<String, Map<String, dynamic>> {
  const _PokemonNameConverter();
  @override
  String fromJson(Map<String, dynamic> json) {
    return json["name"];
  }

  @override
  Map<String, dynamic> toJson(String object) {
    throw UnimplementedError();
  }
}
