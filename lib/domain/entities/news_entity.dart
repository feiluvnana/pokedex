import 'package:freezed_annotation/freezed_annotation.dart';

part "news_entity.freezed.dart";

@freezed
class NewsEntity with _$NewsEntity {
  const factory NewsEntity(
      {required String title,
      required String content,
      required String cover,
      required DateTime createdAt}) = _NewsEntity;
}
