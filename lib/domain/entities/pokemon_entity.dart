import 'package:freezed_annotation/freezed_annotation.dart';

part "pokemon_entity.freezed.dart";

@freezed
class PokemonEntity with _$PokemonEntity {
  const PokemonEntity._();

  const factory PokemonEntity(
      {required String id,
      required String name,
      String? avatar,
      required int heightInCm,
      required double weightInKg,
      required List<String> types,
      required List<(String name, int value)> stats}) = _PokemonEntity;
}
