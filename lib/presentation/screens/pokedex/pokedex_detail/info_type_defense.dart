part of "pokedex_detail_screen.dart";

class _InfoPanelTypeDefenseSection extends ConsumerWidget {
  const _InfoPanelTypeDefenseSection({required this.currentPokemon});

  final PokemonEntity currentPokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var pokemonTypesData =
        ref.watch(getPokemonTypesProvider(currentPokemon.types)).value;
    return pokemonTypesData == null
        ? const LinearProgressIndicator()
        : Wrap(
            runSpacing: 5,
            spacing: 5,
            children: pokemonTypesData.defenseRelation
                .map((e) => DamageRelationChip(type: e.$1, value: e.$2))
                .toList());
  }
}
