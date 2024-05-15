import 'package:freezed_annotation/freezed_annotation.dart';

part "ability_filter_entity.freezed.dart";

@freezed
sealed class AbilityFilterEntity with _$AbilityFilterEntity {
  const factory AbilityFilterEntity.generation(String generation) =
      AbilityGenerationFilter;
}
