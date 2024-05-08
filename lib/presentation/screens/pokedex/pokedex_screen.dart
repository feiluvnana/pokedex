import 'package:flutter/material.dart';
import 'package:test_/core/theme.dart';
import 'package:test_/presentation/components/card.dart';
import 'package:test_/presentation/components/scaffold.dart';

class PokedexScreen extends StatelessWidget {
  const PokedexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const leadingWidth = 56;

    return PokeScaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
        ]),
        SliverPadding(
          padding: const EdgeInsets.symmetric(
              horizontal: leadingWidth / 2 - tIconSize / 2),
          sliver: SliverList.list(
            children: [
              Text("Pokedex", style: textTheme.titleLarge),
              const SizedBox(height: 32),
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 1.4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  PokedexCard(),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
