import 'package:freezed_annotation/freezed_annotation.dart';

part "pokemon_species_entity.freezed.dart";

@freezed
class PokemonSpeciesEntity with _$PokemonSpeciesEntity {
  const PokemonSpeciesEntity._();

  double get femaleInPercentage =>
      maleInPercentage != -1 ? 100 - maleInPercentage : -1;

  bool get isGenderless => maleInPercentage == -1;
  bool get isTotallyMale => maleInPercentage == 100;
  bool get isTotallyFemale => maleInPercentage == 0;

  const factory PokemonSpeciesEntity(
      {required List<String> eggGroups,
      required double maleInPercentage,
      required String description,
      required String evolutionChainId}) = _PokemonSpeciesEntity;
}
