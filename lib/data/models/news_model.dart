import 'package:freezed_annotation/freezed_annotation.dart';

part "news_model.freezed.dart";
part "news_model.g.dart";

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel(
      {required String id,
      required String title,
      required String content,
      required String cover,
      @DateTimeConverter() required DateTime createdAt}) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
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
