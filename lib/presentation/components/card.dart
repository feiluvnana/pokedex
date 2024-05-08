import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_/presentation/components/chip.dart';

class PokedexCard extends StatelessWidget {
  const PokedexCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FilledButton(
      onPressed: () {},
      style: FilledButton.styleFrom(
          backgroundColor: Colors.green,
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
                child: Text("#001",
                    style: textTheme.titleSmall
                        ?.copyWith(color: Colors.grey[700]?.withOpacity(0.5)))),
            Align(
                alignment: Alignment.centerLeft,
                child: Text("Bulbasaur",
                    style:
                        textTheme.titleSmall?.copyWith(color: Colors.white))),
            Expanded(
              child: Row(children: [
                const Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: TagChip(
                            label: "Grass",
                            backgroundColor: Colors.white38,
                            foregroundColor: Colors.white),
                      ),
                      SizedBox(height: 4),
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: TagChip(
                            label: "Poison",
                            backgroundColor: Colors.white38,
                            foregroundColor: Colors.white),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SvgPicture.network(
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/1.svg",
                    fit: BoxFit.contain,
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
