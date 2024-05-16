part of "pokedex_detail_screen.dart";

class _InfoPanelSection extends StatefulWidget {
  final PokemonEntity currentPokemon;
  const _InfoPanelSection({required this.currentPokemon});

  @override
  State<_InfoPanelSection> createState() => _InfoPanelSectionState();
}

class _InfoPanelSectionState extends State<_InfoPanelSection>
    with TickerProviderStateMixin {
  late final tabController = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        TabBar(
          labelColor: tTypeColors[widget.currentPokemon.types.first],
          indicator: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: tTypeColors[widget.currentPokemon.types.first]!,
                      width: 2))),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.zero,
          labelPadding: EdgeInsets.zero,
          dividerHeight: 0,
          labelStyle:
              textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
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
          SingleChildScrollView(
              child: _InfoAboutTab(currentPokemon: widget.currentPokemon)),
          SingleChildScrollView(
              child: _InfoBaseStatsTab(currentPokemon: widget.currentPokemon)),
          const SingleChildScrollView(child: Center(child: Text("WIP"))),
          SingleChildScrollView(
              child: _InfoSkillTab(currentPokemon: widget.currentPokemon))
        ])),
      ],
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
