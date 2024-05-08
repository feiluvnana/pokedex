import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_/domain/entities/pokemon_entity.dart';
import 'package:test_/presentation/components/chip.dart';

class PokedexCard extends StatelessWidget {
  final PokemonEntity entity;
  const PokedexCard(this.entity, {super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FilledButton(
      onPressed: () {},
      style: FilledButton.styleFrom(
          backgroundColor: colours[entity.types.first],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 8)),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: Text("#${entity.id.toString().padLeft(4, "0")}",
                    style: textTheme.titleSmall
                        ?.copyWith(color: Colors.grey[700]?.withOpacity(0.5)))),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(entity.name,
                    style:
                        textTheme.titleSmall?.copyWith(color: Colors.white))),
            Expanded(
              child: Row(children: [
                Expanded(
                  flex: 2,
                  child: Wrap(
                    runSpacing: 4,
                    children: entity.types
                        .map((e) => TagChip(
                            label: "${e[0].toUpperCase()}${e.substring(1)}"))
                        .toList(),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: CachedNetworkImage(
                    imageUrl: entity.avatar ?? "",
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.low,
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

const colours = {
  "normal": Color(0xFFA8A77A),
  "fire": Color(0xFFEE8130),
  "water": Color(0xFF6390F0),
  "electric": Color(0xFFF7D02C),
  "grass": Color(0xFF7AC74C),
  "ice": Color(0xFF96D9D6),
  "fighting": Color(0xFFC22E28),
  "poison": Color(0xFFA33EA1),
  "ground": Color(0xFFE2BF65),
  "flying": Color(0xFFA98FF3),
  "psychic": Color(0xFFF95587),
  "bug": Color(0xFFA6B91A),
  "rock": Color(0xFFB6A136),
  "ghost": Color(0xFF735797),
  "dragon": Color(0xFF6F35FC),
  "dark": Color(0xFF705746),
  "steel": Color(0xFFB7B7CE),
  "fairy": Color(0xFFD685AD),
};
