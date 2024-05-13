part of "pokedex_detail_screen.dart";

class _AppBarSection extends StatefulWidget {
  final PokemonEntity currentPokemon;
  final PagingController<int, PokemonEntity> pagingController;
  final int index, initialIndex;
  final bool Function(int) onPageChanged;
  const _AppBarSection(
      {required this.currentPokemon,
      required this.pagingController,
      required this.index,
      required this.initialIndex,
      required this.onPageChanged});

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
  late final pageController =
      PageController(viewportFraction: 0.5, initialPage: widget.initialIndex);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
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
        title: Text(widget.currentPokemon.name, style: textTitleMediumWhite),
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
                      Text(widget.currentPokemon.name,
                          style: textTheme.titleLarge
                              ?.copyWith(color: Colors.white)),
                      Text(widget.currentPokemon.id,
                          style: textTitleMediumWhite)
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 8),
                child: Wrap(
                  spacing: 5,
                  children: widget.currentPokemon.types
                      .map((e) => TagChip(label: e))
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
                      bool isEnd = widget.onPageChanged.call(value);
                      if (isEnd) {
                        pageController.animateToPage(value - 1,
                            duration: const Duration(seconds: 1),
                            curve: Curves.linear);
                      }
                    },
                    builderDelegate: PagedChildBuilderDelegate<PokemonEntity>(
                        itemBuilder: (context, item, index) {
                          final isSelected = index == widget.index;
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
    animationController.dispose();
    super.dispose();
  }
}
