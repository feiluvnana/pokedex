import 'package:freezed_annotation/freezed_annotation.dart';

part "pokemon_entity.freezed.dart";

@freezed
class PokemonEntity with _$PokemonEntity {
  const PokemonEntity._();

  const factory PokemonEntity(
      {required int id,
      required String name,
      String? avatar,
      required List<String> types}) = _PokemonEntity;

  String get getName => "${name[0].toUpperCase()}${name.substring(1)}";
  List<String> get getTypes =>
      types.map((e) => "${e[0].toUpperCase()}${e.substring(1)}").toList();
}
