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
          SingleChildScrollView(child: _aboutTab()),
          SingleChildScrollView(child: _baseStatsTab()),
          SingleChildScrollView(child: _evolutionTab()),
          SingleChildScrollView(child: _skillTab())
        ])),
      ],
    );
  }

  Widget _skillTab() {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Abilities", style: textTheme.titleSmall),
          _InfoPanelAbilitySection(currentPokemon: widget.currentPokemon),
          Text("Moves", style: textTheme.titleSmall),
          _InfoPanelMoveSection(currentPokemon: widget.currentPokemon),
        ],
      ),
    );
  }

  Widget _evolutionTab() {
    // final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _InfoPanelEvolutionChainSection(currentPokemon: widget.currentPokemon)
        ],
      ),
    );
  }

  Widget _aboutTab() {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("General", style: textTheme.titleSmall),
          _InfoPanelGeneralSection(currentPokemon: widget.currentPokemon),
          Text("Size", style: textTheme.titleSmall),
          _InfoPanelSizeSection(currentPokemon: widget.currentPokemon),
          const SizedBox(height: 8),
          Text("Breeding", style: textTheme.titleSmall),
          _InfoPanelBreedingSection(currentPokemon: widget.currentPokemon)
        ],
      ),
    );
  }

  Widget _baseStatsTab() {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ...widget.currentPokemon.stats.map((e) => Padding(
              padding: const EdgeInsets.all(4),
              child: Row(children: [
                Expanded(
                    flex: 2, child: Text(e.$1, style: textTheme.bodyMedium)),
                Expanded(
                    child: Text(e.$2.toString(), style: textTheme.titleSmall)),
                Expanded(
                  flex: 4,
                  child: LinearProgressIndicator(
                      value: e.$2 / (e.$1 != "➕ Total" ? 255 : 1000),
                      backgroundColor: Colors.grey),
                )
              ]),
            )),
        const SizedBox(height: 8),
        Text("Type Defenses", style: textTheme.titleSmall),
        Text(
            "The effectiveness of each type when attacking ${widget.currentPokemon.name}.",
            style: textTheme.bodySmall),
        const SizedBox(height: 8),
        _InfoPanelTypeDefenseSection(currentPokemon: widget.currentPokemon),
        const SizedBox(height: 8),
        Text("Type Attacks", style: textTheme.titleSmall),
        Text(
            "The effectiveness of ${widget.currentPokemon.name}'s attacks on each type.",
            style: textTheme.bodySmall),
        const SizedBox(height: 8),
        _InfoPanelTypeAttackSection(currentPokemon: widget.currentPokemon),
      ]),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
