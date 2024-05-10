// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part "pokemon_types_model.freezed.dart";
part "pokemon_types_model.g.dart";

@freezed
class PokemonTypesModel with _$PokemonTypesModel {
  @JsonSerializable(explicitToJson: true)
  const factory PokemonTypesModel(
      {@JsonKey(name: "damage_relations")
      required DamageRelationsModel damageRelations}) = _PokemonTypesModel;

  factory PokemonTypesModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypesModelFromJson(json);
}

@freezed
class DamageRelationsModel with _$DamageRelationsModel {
  @JsonSerializable(explicitToJson: true)
  const factory DamageRelationsModel({
    @_DamageRelationConverter()
    @JsonKey(name: "double_damage_from")
    required List<String> doubleDamageFrom,
    @_DamageRelationConverter()
    @JsonKey(name: "double_damage_to")
    required List<String> doubleDamageTo,
    @_DamageRelationConverter()
    @JsonKey(name: "no_damage_from")
    required List<String> noDamageFrom,
    @_DamageRelationConverter()
    @JsonKey(name: "no_damage_to")
    required List<String> noDamageTo,
    @_DamageRelationConverter()
    @JsonKey(name: "half_damage_from")
    required List<String> halfDamageFrom,
    @_DamageRelationConverter()
    @JsonKey(name: "half_damage_to")
    required List<String> halfDamageTo,
  }) = _DamageRelationsModel;

  factory DamageRelationsModel.fromJson(Map<String, dynamic> json) =>
      _$DamageRelationsModelFromJson(json);
}

class _DamageRelationConverter extends JsonConverter<List<String>, List> {
  const _DamageRelationConverter();

  @override
  List<String> fromJson(List json) {
    return json.map((e) => e["name"].toString()).toList();
  }

  @override
  List toJson(List<String> object) {
    throw UnimplementedError();
  }
}
