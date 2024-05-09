import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:test_/core/colors.dart';
import 'package:test_/core/widgets.dart';
import 'package:test_/domain/entities/pokemon_entity.dart';
import 'package:test_/domain/providers/poke_provider.dart';
import 'package:test_/presentation/components/chip.dart';

class PokedexDetailScreen extends StatefulWidget {
  final int initialIndex;
  final PagingController<int, PokemonEntity> pagingController;
  const PokedexDetailScreen(
      {super.key, required this.initialIndex, required this.pagingController});

  @override
  State<PokedexDetailScreen> createState() => _PokedexDetailScreenState();
}

class _PokedexDetailScreenState extends State<PokedexDetailScreen>
    with TickerProviderStateMixin {
  late int index = widget.initialIndex;
  late final pageController =
      PageController(viewportFraction: 0.5, initialPage: widget.initialIndex);
  late final scrollController = ScrollController();
  late final tabController = TabController(length: 4, vsync: this);
  late final animationController = AnimationController(
      vsync: this,
      lowerBound: 0,
      upperBound: 1,
      duration: const Duration(seconds: 3))
    ..repeat();

  @override
  Widget build(BuildContext context) {
    final currentPokemon =
        (widget.pagingController.value.itemList ?? [])[index];
    final screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: tTypeColors[currentPokemon.types.first],
      body: SlidingUpPanel(
        onPanelOpened: () =>
            scrollController.jumpTo(scrollController.position.maxScrollExtent),
        onPanelClosed: () => scrollController.jumpTo(0),
        minHeight: screenHeight / 2,
        maxHeight:
            screenHeight - kToolbarHeight - MediaQuery.paddingOf(context).top,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        body: CustomScrollView(
          controller: scrollController,
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            _appBarSection(context),
            SliverList.list(
                children: List.generate(30, (index) => const Text("")))
          ],
        ),
        panel: _infoPanelSection(context),
      ),
    );
  }

  Widget _infoPanelSection(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final currentPokemon =
        (widget.pagingController.value.itemList ?? [])[index];
    return Column(
      children: [
        TabBar(
          labelPadding: EdgeInsets.zero,
          dividerHeight: 0,
          labelStyle:
              textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
          controller: tabController,
          tabs: const [
            Tab(text: "About"),
            Tab(text: "Base Stats"),
            Tab(text: "Evolution"),
            Tab(text: "Moves")
          ],
        ),
        Expanded(
          child: TabBarView(controller: tabController, children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("General", style: textTheme.titleSmall),
                  Consumer(builder: (context, ref, child) {
                    final pokemonSpeciesData = ref
                        .watch(getPokemonSpeciesProvider(currentPokemon.name))
                        .value;
                    return pokemonSpeciesData == null
                        ? const LinearProgressIndicator()
                        : Text(pokemonSpeciesData.description);
                  }),
                  Text("Size", style: textTheme.titleSmall),
                  _infoPanelHeightWeightSection(context),
                  const SizedBox(height: 8),
                  _infoPanelBreedingSection(context)
                ],
              ),
            ),
            const Text("2"),
            const Text("3"),
            const Text("4")
          ]),
        )
      ],
    );
  }

  Widget _infoPanelHeightWeightSection(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final currentPokemon =
        (widget.pagingController.value.itemList ?? [])[index];
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text.rich(TextSpan(children: [
            const TextSpan(text: "Height\n"),
            TextSpan(
                text: "${currentPokemon.heightInCm}cm",
                style: textTheme.titleSmall)
          ])),
          Text.rich(TextSpan(children: [
            const TextSpan(text: "Weight\n"),
            TextSpan(
                text: "${currentPokemon.weightInKg.toStringAsFixed(1)}kg",
                style: textTheme.titleSmall)
          ]))
        ],
      ),
    );
  }

  Widget _infoPanelBreedingSection(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final currentPokemon =
        (widget.pagingController.value.itemList ?? [])[index];
    return Consumer(builder: (context, ref, child) {
      final pokemonSpeciesData =
          ref.watch(getPokemonSpeciesProvider(currentPokemon.name)).value;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Breeding", style: textTheme.titleSmall),
          if (pokemonSpeciesData != null) ...[
            Row(children: [
              const Text("Gender: "),
              if (!pokemonSpeciesData.isGenderless) ...[
                if (!pokemonSpeciesData.isTotallyFemale) ...[
                  const Icon(Icons.male, color: Colors.blue),
                  Text(
                      "${pokemonSpeciesData.maleInPercentage.toStringAsFixed(1)}%"),
                  const SizedBox(width: 8)
                ],
                if (!pokemonSpeciesData.isTotallyMale) ...[
                  const Icon(Icons.female, color: Colors.pink),
                  Text(
                      "${pokemonSpeciesData.femaleInPercentage.toStringAsFixed(1)}%")
                ]
              ] else ...[
                const Stack(
                  children: [
                    Icon(Icons.transgender, color: Colors.grey),
                    Icon(Icons.close, color: Colors.grey),
                  ],
                ),
                const Text("Genderless")
              ]
            ]),
            Row(children: [
              const Text("Egg Groups: "),
              Expanded(
                  child: Wrap(
                spacing: 5,
                children: pokemonSpeciesData.eggGroups
                    .map((e) => EggGroupChip(label: e))
                    .toList(),
              ))
            ])
          ] else
            const LinearProgressIndicator()
        ],
      );
    });
  }

  Widget _appBarSection(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final currentPokemon =
        (widget.pagingController.value.itemList ?? [])[index];
    final textTitleMediumWhite =
        textTheme.titleMedium?.copyWith(color: Colors.white);
    final screenWidth = MediaQuery.sizeOf(context).width;

    return SliverAppBar.large(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, color: Colors.white)),
        backgroundColor: Colors.transparent,
        expandedHeight: MediaQuery.sizeOf(context).height / 2,
        centerTitle: true,
        title: Text(currentPokemon.name, style: textTitleMediumWhite),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite, color: Colors.white))
        ],
        flexibleSpace: FlexibleSpaceBar(
          background: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 32, right: 32, top: 16 + kToolbarHeight),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(currentPokemon.name,
                          style: textTheme.titleLarge
                              ?.copyWith(color: Colors.white)),
                      Text(currentPokemon.id, style: textTitleMediumWhite)
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 8),
                child: Wrap(
                  spacing: 5,
                  children: currentPokemon.types
                      .map((e) => TypeChip(label: e))
                      .toList(),
                ),
              ),
              Expanded(
                child: Stack(children: [
                  Center(
                      child: RotationTransition(
                    turns: animationController,
                    child: Image.asset("assets/images/pokeball.png",
                        color: Colors.grey[300]?.withOpacity(0.4),
                        width: screenWidth / 2,
                        height: screenWidth / 2,
                        filterQuality: FilterQuality.high),
                  )),
                  PagedPageView(
                    pageController: pageController,
                    pagingController: widget.pagingController,
                    onPageChanged: (value) {
                      final lastPageIndex =
                          (widget.pagingController.itemList ?? []).length - 1;
                      if (value > lastPageIndex) {
                        pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.linear);
                        return;
                      }
                      setState(() => index = value);
                    },
                    builderDelegate: PagedChildBuilderDelegate<PokemonEntity>(
                        itemBuilder: (context, item, index) {
                          final isSelected = index == this.index;
                          return Center(
                            child: Hero(
                              tag: item.avatar!,
                              child: CachedNetworkImage(
                                fadeInDuration: Duration.zero,
                                fadeOutDuration: Duration.zero,
                                imageUrl: item.avatar!,
                                width: screenWidth / (isSelected ? 2 : 4),
                                fit: BoxFit.contain,
                                filterQuality: FilterQuality.low,
                                color: isSelected
                                    ? null
                                    : Colors.grey.withOpacity(0.8),
                              ),
                            ),
                          );
                        },
                        noMoreItemsIndicatorBuilder: (context) => const Center(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("No more Pokémon News."),
                            )),
                        newPageProgressIndicatorBuilder: (context) =>
                            tPikaLoader,
                        firstPageProgressIndicatorBuilder: (context) =>
                            tPikaLoader),
                  ),
                ]),
              )
            ],
          ),
        ));
  }

  @override
  void dispose() {
    scrollController.dispose();
    tabController.dispose();
    animationController.dispose();
    super.dispose();
  }
}
