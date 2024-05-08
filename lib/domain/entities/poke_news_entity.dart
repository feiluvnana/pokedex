import 'package:freezed_annotation/freezed_annotation.dart';

part "poke_news_entity.freezed.dart";

@freezed
class PokeNewsEntity with _$PokeNewsEntity {
  const factory PokeNewsEntity(
      {required String title,
      required String content,
      required String cover,
      required DateTime createdAt}) = _PokeNewsEntity;
}
