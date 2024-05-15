import 'package:freezed_annotation/freezed_annotation.dart';

part "ability_entity.freezed.dart";

@freezed
class AbilityEntity with _$AbilityEntity {
  const AbilityEntity._();

  factory AbilityEntity.empty() => const AbilityEntity(
      name: "",
      generation: "",
      fullEffect: "",
      shortEffect: "",
      description: "");

  const factory AbilityEntity(
      {required String name,
      required String fullEffect,
      required String shortEffect,
      required String description,
      required String generation}) = _AbilityEntity;
}
