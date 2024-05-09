import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_/core/colors.dart';
import 'package:test_/domain/entities/pokemon_entity.dart';
import 'package:test_/presentation/components/chip.dart';
import 'package:test_/presentation/screens/pokedex/pokedex_detail_screen.dart';

class PokedexCard extends StatelessWidget {
  static const pokeballSize = 80.0;
  final PokemonEntity entity;
  final List<PokemonEntity> entities;
  final int currentIndex;
  const PokedexCard(this.entity,
      {super.key, required this.currentIndex, required this.entities});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FilledButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PokedexDetailScreen(
                  entities: entities, initialIndex: currentIndex),
            ));
      },
      style: FilledButton.styleFrom(
          backgroundColor: tTypeColors[entity.types.first],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 8)),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                right: 10,
                child: Image.asset("assets/images/pokeball.png",
                    color: Colors.grey[300]?.withOpacity(0.4),
                    width: pokeballSize,
                    height: pokeballSize,
                    filterQuality: FilterQuality.high)),
            Column(
              children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("#${entity.id.toString().padLeft(4, "0")}",
                        style: textTheme.titleSmall?.copyWith(
                            color: Colors.grey[700]?.withOpacity(0.5)))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(entity.getName,
                        style: textTheme.titleSmall
                            ?.copyWith(color: Colors.white))),
                Expanded(
                  child: Row(children: [
                    Expanded(
                      flex: 2,
                      child: Wrap(
                        runSpacing: 4,
                        children: entity.getTypes
                            .map((e) => TagChip(label: e))
                            .toList(),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Hero(
                        tag: entity.avatar!,
                        child: CachedNetworkImage(
                          imageUrl: entity.avatar!,
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.low,
                        ),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
