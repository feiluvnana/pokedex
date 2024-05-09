// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSpeciesModelImpl _$$PokemonSpeciesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpeciesModelImpl(
      eggGroups:
          const _EggGroupsConverter().fromJson(json['egg_groups'] as List),
      genderRate: (json['gender_rate'] as num).toInt(),
      description: const _DescriptionConverter()
          .fromJson(json['flavor_text_entries'] as List),
    );

Map<String, dynamic> _$$PokemonSpeciesModelImplToJson(
        _$PokemonSpeciesModelImpl instance) =>
    <String, dynamic>{
      'egg_groups': const _EggGroupsConverter().toJson(instance.eggGroups),
      'gender_rate': instance.genderRate,
      'flavor_text_entries':
          const _DescriptionConverter().toJson(instance.description),
    };
