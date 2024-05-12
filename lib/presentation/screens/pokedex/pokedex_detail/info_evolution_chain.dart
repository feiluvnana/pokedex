part of "pokedex_detail_screen.dart";

class _InfoPanelEvolutionChainSection extends ConsumerWidget {
  final PokemonEntity currentPokemon;
  const _InfoPanelEvolutionChainSection({required this.currentPokemon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chainData =
        ref.watch(getEvolutionChainProvider(currentPokemon.name)).value?.chain;
    return chainData == null
        ? const LinearProgressIndicator()
        : _craftArrowElement(chainData);
  }

  Widget _craftArrowElement(ChainLinkEntity entity) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(32),
          child: ArrowElement(
              show: true,
              id: entity.pokemon.id,
              color: Colors.red,
              targetIds: entity.evolvesTo.map((e) => e.pokemon.id).toList(),
              targetAnchor: Alignment.topCenter,
              sourceAnchor: Alignment.bottomCenter,
              child: Text(entity.pokemon.name)),
        ),
        ...entity.evolvesTo.map((e) => _craftArrowElement(e))
      ],
    );
  }
}