part of "pokedex_detail_screen.dart";

class _InfoPanelGeneralSection extends ConsumerWidget {
  final PokemonEntity currentPokemon;
  const _InfoPanelGeneralSection({required this.currentPokemon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonSpeciesData =
        ref.watch(getPokemonSpeciesProvider(currentPokemon.name)).value;
    return pokemonSpeciesData == null
        ? const LinearProgressIndicator()
        : Text(pokemonSpeciesData.description);
  }
}
