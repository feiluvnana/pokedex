// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbilityModelImpl _$$AbilityModelImplFromJson(Map<String, dynamic> json) =>
    _$AbilityModelImpl(
      name: json['name'] as String,
      effect: const _EffectEntriesConverter()
          .fromJson(json['effect_entries'] as List),
      description: const _DescriptionConverter()
          .fromJson(json['flavor_text_entries'] as List),
      generation: const _GenerationConverter()
          .fromJson(json['generation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AbilityModelImplToJson(_$AbilityModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'effect_entries': const _EffectEntriesConverter().toJson(instance.effect),
      'flavor_text_entries':
          const _DescriptionConverter().toJson(instance.description),
      'generation': const _GenerationConverter().toJson(instance.generation),
    };
