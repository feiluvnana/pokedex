// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonModelImpl _$$PokemonModelImplFromJson(Map<String, dynamic> json) =>
    _$PokemonModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      weight: (json['weight'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      avatar: _$JsonConverterFromJson<Map<String, dynamic>, String?>(
          json['sprites'], const _AvatarConverter().fromJson),
      types: const _TypesConverter().fromJson(json['types'] as List),
      abilities:
          const _AbilitiesConverter().fromJson(json['abilities'] as List),
      moves: const _MovesConverter().fromJson(json['moves'] as List),
      stats: const _StatsConverter().fromJson(json['stats'] as List),
    );

Map<String, dynamic> _$$PokemonModelImplToJson(_$PokemonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
      'height': instance.height,
      'sprites': const _AvatarConverter().toJson(instance.avatar),
      'types': const _TypesConverter().toJson(instance.types),
      'abilities': const _AbilitiesConverter().toJson(instance.abilities),
      'moves': const _MovesConverter().toJson(instance.moves),
      'stats': const _StatsConverter().toJson(instance.stats),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
