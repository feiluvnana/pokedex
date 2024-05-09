import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:test_/core/colors.dart';
import 'package:test_/domain/entities/pokemon_entity.dart';
import 'package:test_/presentation/components/chip.dart';

class PokedexDetailScreen extends StatefulWidget {
  final List<PokemonEntity> entities;
  final int initialIndex;
  const PokedexDetailScreen(
      {super.key, required this.entities, required this.initialIndex});

  @override
  State<PokedexDetailScreen> createState() => _PokedexDetailScreenState();
}

class _PokedexDetailScreenState extends State<PokedexDetailScreen>
    with TickerProviderStateMixin {
  late int index = widget.initialIndex;
  late final pageController =
      PageController(initialPage: widget.initialIndex, viewportFraction: 0.5);
  late final scrollController = ScrollController();
  late final tabController = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    final currentPokemon = widget.entities[index];
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: tTypeColors[currentPokemon.types.first],
      body: SlidingUpPanel(
        onPanelOpened: () {
          scrollController.jumpTo(scrollController.position.maxScrollExtent);
        },
        onPanelClosed: () {
          scrollController.jumpTo(0);
        },
        minHeight: MediaQuery.sizeOf(context).height / 2,
        maxHeight: MediaQuery.sizeOf(context).height -
            kToolbarHeight -
            MediaQuery.paddingOf(context).top -
            MediaQuery.paddingOf(context).bottom,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        body: CustomScrollView(
          controller: scrollController,
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            _AppBarSection(
              pageController: pageController,
              entities: widget.entities,
              currentIndex: index,
              onPageChanged: (value) => setState(() => index = value),
            ),
            SliverList.list(
                children: List.generate(30, (index) => const Text("")))
          ],
        ),
        panel: Column(
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
              child: TabBarView(controller: tabController, children: const [
                Column(
                  children: [
                    Text("1"),
                    Text("1"),
                    Text("1"),
                    Text("1"),
                    Text("1"),
                    Text("1"),
                    Text("1"),
                    Text("1")
                  ],
                ),
                Text("2"),
                Text("3"),
                Text("4")
              ]),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

class _AppBarSection extends StatefulWidget {
  final PageController pageController;
  final void Function(int)? onPageChanged;
  final int currentIndex;
  final List<PokemonEntity> entities;

  const _AppBarSection(
      {required this.pageController,
      required this.currentIndex,
      this.onPageChanged,
      required this.entities});

  @override
  State<_AppBarSection> createState() => _AppBarSectionState();
}

class _AppBarSectionState extends State<_AppBarSection>
    with TickerProviderStateMixin {
  late final animationController = AnimationController(
      vsync: this,
      lowerBound: 0,
      upperBound: 1,
      duration: const Duration(seconds: 3))
    ..repeat();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SliverAppBar.large(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, color: Colors.white)),
        backgroundColor: Colors.transparent,
        expandedHeight: MediaQuery.sizeOf(context).height / 2,
        centerTitle: true,
        title: Text(widget.entities[widget.currentIndex].getName,
            style: textTheme.titleMedium?.copyWith(color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite, color: Colors.white))
        ],
        flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.pin,
          background: Column(
            children: [
              const SizedBox(height: kToolbarHeight),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 12),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.entities[widget.currentIndex].getName,
                          style: textTheme.titleLarge
                              ?.copyWith(color: Colors.white)),
                      Text(
                          "#${widget.entities[widget.currentIndex].id.toString().padLeft(4, "0")}",
                          style: textTheme.titleMedium?.copyWith(
                              color: Colors.grey[700]?.withOpacity(0.5)))
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(alignment: WrapAlignment.start, spacing: 8, children: [
                      ...widget.entities[widget.currentIndex].getTypes.map(
                          (e) => SizedBox(width: 70, child: TagChip(label: e)))
                    ]),
                    Text("Seed",
                        style:
                            textTheme.titleSmall?.copyWith(color: Colors.white))
                  ],
                ),
              ),
              Expanded(
                child: Stack(children: [
                  Center(
                      child: RotationTransition(
                    turns: animationController,
                    child: Image.asset("assets/images/pokeball.png",
                        color: Colors.grey[300]?.withOpacity(0.4),
                        width: MediaQuery.sizeOf(context).width / 2,
                        height: MediaQuery.sizeOf(context).width / 2,
                        filterQuality: FilterQuality.high),
                  )),
                  PageView.builder(
                    controller: widget.pageController,
                    onPageChanged: widget.onPageChanged,
                    itemCount: widget.entities.length,
                    itemBuilder: (context, index) {
                      final currentPokemon = widget.entities[index];
                      final isSelected = index == widget.currentIndex;
                      return Center(
                        child: Hero(
                          tag: currentPokemon.avatar!,
                          child: CachedNetworkImage(
                            imageUrl: currentPokemon.avatar!,
                            width: MediaQuery.sizeOf(context).width /
                                (isSelected ? 2 : 4),
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.low,
                            color: isSelected ? null : Colors.grey,
                          ),
                        ),
                      );
                    },
                  ),
                ]),
              )
            ],
          ),
        ));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
