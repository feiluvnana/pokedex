// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part "ability_model.freezed.dart";
part "ability_model.g.dart";

@freezed
class AbilityModel with _$AbilityModel {
  const factory AbilityModel(
      {required String name,
      @JsonKey(name: "effect_entries")
      @_EffectEntriesConverter()
      required (String full, String short) effect,
      @_DescriptionConverter()
      @JsonKey(name: "flavor_text_entries")
      required String description,
      @_GenerationConverter() required String generation}) = _AbilityModel;

  factory AbilityModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityModelFromJson(json);
}

class _EffectEntriesConverter
    extends JsonConverter<(String full, String short), List<dynamic>> {
  const _EffectEntriesConverter();
  @override
  (String, String) fromJson(List json) {
    final object = json.firstWhere((e) => e["language"]["name"] == "en",
        orElse: () => json.firstWhere(
            (e) => e["language"]["name"].toString().contains("jp"),
            orElse: () => {
                  "effect": "No effect description available.",
                  "short_effect": "No effect description available."
                }));
    return (object["effect"], object["short_effect"]);
  }

  @override
  List toJson((String, String) object) {
    throw UnimplementedError();
  }
}

class _GenerationConverter extends JsonConverter<String, Map<String, dynamic>> {
  const _GenerationConverter();

  @override
  String fromJson(Map<String, dynamic> json) {
    return json["name"];
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
        .firstWhere((e) => e["language"]["name"] == "en",
            orElse: () => json.firstWhere(
                (e) => e["language"]["name"].toString().contains("jp"),
                orElse: () => {
                      "flavor_text": "No description available.",
                    }))["flavor_text"]
        .toString();
  }

  @override
  List toJson(String object) {
    throw UnimplementedError();
  }
}
