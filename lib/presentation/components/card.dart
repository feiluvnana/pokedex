import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:test_/core/colors.dart';
import 'package:test_/domain/entities/pokemon_entity.dart';
import 'package:test_/presentation/components/chip.dart';
import 'package:test_/presentation/screens/pokedex/pokedex_detail/pokedex_detail_screen.dart';

class PokedexCard extends StatelessWidget {
  static const pokeballSize = 80.0;
  final PokemonEntity entity;

  final PagingController<int, PokemonEntity> pagingController;
  final int currentIndex;
  const PokedexCard(this.entity,
      {super.key, required this.currentIndex, required this.pagingController});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FilledButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PokedexDetailScreen(
                  initialIndex: currentIndex,
                  pagingController: pagingController),
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
                    child: Text(entity.id,
                        style: textTheme.titleSmall?.copyWith(
                            color: Colors.grey[700]?.withOpacity(0.5)))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(entity.name,
                        style: textTheme.titleSmall
                            ?.copyWith(color: Colors.white))),
                Expanded(
                  child: Row(children: [
                    Expanded(
                      flex: 2,
                      child: Wrap(
                        runSpacing: 5,
                        children: entity.types
                            .map((e) => TypeChip(label: e))
                            .toList(),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Hero(
                        tag: entity.avatar!,
                        child: CachedNetworkImage(
                          fadeInDuration: Duration.zero,
                          fadeOutDuration: Duration.zero,
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
