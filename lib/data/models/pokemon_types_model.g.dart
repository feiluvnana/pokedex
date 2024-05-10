// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonTypesModelImpl _$$PokemonTypesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypesModelImpl(
      damageRelations: DamageRelationsModel.fromJson(
          json['damage_relations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypesModelImplToJson(
        _$PokemonTypesModelImpl instance) =>
    <String, dynamic>{
      'damage_relations': instance.damageRelations.toJson(),
    };

_$DamageRelationsModelImpl _$$DamageRelationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DamageRelationsModelImpl(
      doubleDamageFrom: const _DamageRelationConverter()
          .fromJson(json['double_damage_from'] as List),
      doubleDamageTo: const _DamageRelationConverter()
          .fromJson(json['double_damage_to'] as List),
      noDamageFrom: const _DamageRelationConverter()
          .fromJson(json['no_damage_from'] as List),
      noDamageTo: const _DamageRelationConverter()
          .fromJson(json['no_damage_to'] as List),
      halfDamageFrom: const _DamageRelationConverter()
          .fromJson(json['half_damage_from'] as List),
      halfDamageTo: const _DamageRelationConverter()
          .fromJson(json['half_damage_to'] as List),
    );

Map<String, dynamic> _$$DamageRelationsModelImplToJson(
        _$DamageRelationsModelImpl instance) =>
    <String, dynamic>{
      'double_damage_from':
          const _DamageRelationConverter().toJson(instance.doubleDamageFrom),
      'double_damage_to':
          const _DamageRelationConverter().toJson(instance.doubleDamageTo),
      'no_damage_from':
          const _DamageRelationConverter().toJson(instance.noDamageFrom),
      'no_damage_to':
          const _DamageRelationConverter().toJson(instance.noDamageTo),
      'half_damage_from':
          const _DamageRelationConverter().toJson(instance.halfDamageFrom),
      'half_damage_to':
          const _DamageRelationConverter().toJson(instance.halfDamageTo),
    };
