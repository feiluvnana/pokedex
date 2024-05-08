// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokeNewsModelImpl _$$PokeNewsModelImplFromJson(Map<String, dynamic> json) =>
    _$PokeNewsModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      cover: json['cover'] as String,
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
    );

Map<String, dynamic> _$$PokeNewsModelImplToJson(_$PokeNewsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'cover': instance.cover,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
    };
