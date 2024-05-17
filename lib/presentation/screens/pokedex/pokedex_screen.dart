import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'package:pokedex/core/constant.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/domain/providers/poke_provider.dart';
import 'package:pokedex/presentation/components/card.dart';
import 'package:pokedex/presentation/components/scaffold.dart';

class PokedexScreen extends ConsumerStatefulWidget {
  const PokedexScreen({super.key});

  @override
  ConsumerState<PokedexScreen> createState() => _PokedexScreenState();
}

class _PokedexScreenState extends ConsumerState<PokedexScreen> {
  final pagingController =
      PagingController<int, PokemonEntity>(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
    pagingController.addPageRequestListener((page) async {
      var items = await ref.read(getPokemonsProvider(page).future);
      if (items.length >= tPokeApiPaginationLimit) {
        pagingController.appendPage(items, page + 1);
      } else {
        pagingController.appendLastPage(items);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PokeScaffold(
        body: RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(getPokemonsProvider);
        pagingController.refresh();
      },
      child: CustomScrollView(
        slivers: [
          const _AppBarSection(),
          const _TitleSection(),
          _PokemonListSection(pagingController: pagingController)
        ],
      ),
    ));
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const leadingWidth = 56;

    return SliverPadding(
      padding: const EdgeInsets.only(
          left: leadingWidth / 2 - tIconSize / 2,
          bottom: 32,
          right: leadingWidth / 2 - tIconSize / 2),
      sliver: SliverToBoxAdapter(
          child: Text("Pokedex", style: textTheme.titleLarge)),
    );
  }
}

class _AppBarSection extends StatelessWidget {
  const _AppBarSection();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))]);
  }
}

class _PokemonListSection extends StatelessWidget {
  const _PokemonListSection({required this.pagingController});

  final PagingController<int, PokemonEntity> pagingController;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(8.0),
      sliver: PagedSliverGrid<int, PokemonEntity>(
          showNewPageProgressIndicatorAsGridChild: false,
          pagingController: pagingController,
          builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (context, item, index) => PokedexCard(item,
                  currentIndex: index, pagingController: pagingController),
              noMoreItemsIndicatorBuilder: (context) => const Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("No more Pokémon News."),
                  )),
              newPageProgressIndicatorBuilder: (context) => tPikaLoader,
              firstPageProgressIndicatorBuilder: (context) => tPikaLoader),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 210,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1.618)),
    );
  }
}
