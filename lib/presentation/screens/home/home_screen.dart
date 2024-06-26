import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'package:pokedex/core/constant.dart';
import 'package:pokedex/data/sources/api/pokenews_api.dart';
import 'package:pokedex/domain/entities/poke_news_entity.dart';
import 'package:pokedex/domain/providers/poke_news_provider.dart';
import 'package:pokedex/presentation/components/button.dart';
import 'package:pokedex/presentation/components/listtile.dart';
import 'package:pokedex/presentation/components/scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Theme.of(context).iconButtonTheme.style?.padding;
    return PokeScaffold(
      backgroundColor: Colors.grey[300],
      body: const CustomScrollView(
          primary: true, slivers: [_AppBarSection(), _PokemonNewsSection()]),
    );
  }
}

class _PokemonNewsSection extends ConsumerStatefulWidget {
  const _PokemonNewsSection();

  @override
  ConsumerState<_PokemonNewsSection> createState() =>
      _PokemonNewsSectionState();
}

class _PokemonNewsSectionState extends ConsumerState<_PokemonNewsSection> {
  final pagingController =
      PagingController<int, PokeNewsEntity>(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
    pagingController.addPageRequestListener((page) async {
      var items = await ref.read(getPokeNewsProvider(page).future);
      if (items.length >= tPokeNewsApiPaginationLimit) {
        pagingController.appendPage(items, page + 1);
      } else {
        pagingController.appendLastPage(items);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SliverList.list(children: [
      Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Pokémon News", style: textTheme.titleMedium),
            TextButton(
                onPressed: () {
                  ref.invalidate(getPokeNewsProvider);
                  pagingController.refresh();
                },
                child: const Text("Refresh")),
          ],
        ),
      ),
      PagedListView<int, PokeNewsEntity>(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          pagingController: pagingController,
          builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (context, item, index) => NewsListTile(item),
              noMoreItemsIndicatorBuilder: (context) => Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8.0),
                    child: const Text("No more Pokémon News."),
                  ),
              newPageProgressIndicatorBuilder: (context) => tPikaLoader,
              firstPageProgressIndicatorBuilder: (context) => tPikaLoader))
    ]);
  }
}

class _AppBarSection extends StatelessWidget {
  const _AppBarSection();

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.only(
        bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16));
    final textTheme = Theme.of(context).textTheme;
    final buttonPerRows = MediaQuery.sizeOf(context).width ~/ 200 + 1;
    final buttonHeight =
        min(MediaQuery.sizeOf(context).width / buttonPerRows + 20, 200) / 3;

    return SliverAppBar.large(
      shape: const RoundedRectangleBorder(borderRadius: borderRadius),
      expandedHeight: 250.0 + buttonHeight * (8 / buttonPerRows).ceil(),
      title: Text("Pokedex",
          style: textTheme.titleLarge?.copyWith(color: Colors.white)),
      centerTitle: true,
      flexibleSpace: Container(
        decoration:
            const BoxDecoration(borderRadius: borderRadius, color: Colors.red),
        clipBehavior: Clip.antiAlias,
        child: FlexibleSpaceBar(
          background: Container(
            clipBehavior: Clip.antiAlias,
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
                color: Colors.white, borderRadius: borderRadius),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 32),
              Text("What Pokemon", style: textTheme.titleLarge),
              Text("are you looking for?", style: textTheme.titleLarge),
              const SizedBox(height: 32),
              const _SearchBarSection(),
              const SizedBox(height: 32),
              const _ButtonGridSection()
            ]),
          ),
        ),
      ),
    );
  }
}

class _ButtonGridSection extends StatelessWidget {
  const _ButtonGridSection();

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 180,
        childAspectRatio: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        PokeFilledButton(
            backgroundColor: Colors.teal,
            onPressed: () {
              context.go(tPokedexRoute);
            },
            child: const Row(children: [Text("Pokedex")])),
        PokeFilledButton(
            backgroundColor: Colors.red,
            onPressed: () {},
            child: const Row(children: [Text("Moves")])),
        PokeFilledButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              context.go(tAbilityRoute);
            },
            child: const Row(children: [Text("Abilities")])),
        PokeFilledButton(
            backgroundColor: Colors.yellow[700],
            onPressed: () {},
            child: const Row(children: [Text("Items")])),
        PokeFilledButton(
            backgroundColor: Colors.purple[700],
            onPressed: () {},
            child: const Row(children: [Text("Locations")])),
        PokeFilledButton(
            backgroundColor: Colors.brown,
            onPressed: () {},
            child: const Row(children: [Text("Type Effects")])),
        PokeFilledButton(
            backgroundColor: Colors.deepOrange,
            onPressed: () {},
            child: const Row(children: [Text("Glossary")])),
        PokeFilledButton(
            backgroundColor: Colors.indigo,
            onPressed: () {},
            child: const Row(children: [Text("About")]))
      ],
    );
  }
}

class _SearchBarSection extends StatelessWidget {
  const _SearchBarSection();

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: const Icon(Icons.search),
      elevation: const WidgetStatePropertyAll(0),
      backgroundColor: WidgetStatePropertyAll(Colors.grey[300]),
      hintText: "Search Pokemon, Move, Ability, etc...",
      hintStyle: WidgetStatePropertyAll(Theme.of(context).textTheme.labelLarge),
    );
  }
}
