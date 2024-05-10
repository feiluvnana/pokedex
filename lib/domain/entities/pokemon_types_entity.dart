import 'package:freezed_annotation/freezed_annotation.dart';

part "pokemon_types_entity.freezed.dart";

@freezed
class PokemonTypesEntity with _$PokemonTypesEntity {
  const PokemonTypesEntity._();

  const factory PokemonTypesEntity(
          {required List<(String type, double factor)> attackRelation,
          required List<(String type, double factor)> defenseRelation}) =
      _PokemonTypesEntity;
}
