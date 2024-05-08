import 'package:freezed_annotation/freezed_annotation.dart';

part "pokemon_entity.freezed.dart";

@freezed
class PokemonEntity with _$PokemonEntity {
  const factory PokemonEntity(
      {required int id,
      required String name,
      String? avatar,
      required List<String> types}) = _PokemonEntity;
}
