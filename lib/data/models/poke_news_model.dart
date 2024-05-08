import 'package:freezed_annotation/freezed_annotation.dart';

part "poke_news_model.freezed.dart";
part "poke_news_model.g.dart";

@freezed
class PokeNewsModel with _$PokeNewsModel {
  const factory PokeNewsModel(
      {required String id,
      required String title,
      required String content,
      required String cover,
      @DateTimeConverter() required DateTime createdAt}) = _PokeNewsModel;

  factory PokeNewsModel.fromJson(Map<String, dynamic> json) =>
      _$PokeNewsModelFromJson(json);
}

class DateTimeConverter extends JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime object) {
    return object.toIso8601String();
  }
}
