part of "pokedex_detail_screen.dart";

class _InfoBaseStatsTab extends ConsumerWidget {
  final PokemonEntity currentPokemon;
  const _InfoBaseStatsTab({required this.currentPokemon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    var pokemonTypesData =
        ref.watch(getPokemonTypesProvider(currentPokemon.types)).value;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ...currentPokemon.stats.map((e) => Padding(
              padding: const EdgeInsets.all(4),
              child: Row(children: [
                Expanded(flex: 2, child: tStatsWidget[e.$1]!),
                Expanded(
                    child: Text(e.$2.toString(), style: textTheme.titleSmall)),
                Expanded(
                  flex: 4,
                  child: LinearProgressIndicator(
                      color: tStatsColor[e.$1],
                      value: e.$2 / (e.$1 != "total" ? 255 : 1000),
                      backgroundColor: Colors.grey),
                )
              ]),
            )),
        const SizedBox(height: 8),
        Text("Type Defenses", style: textTheme.titleSmall),
        Text(
            "The effectiveness of each type when attacking ${currentPokemon.name}.",
            style: textTheme.bodySmall),
        const SizedBox(height: 8),
        pokemonTypesData == null
            ? const LinearProgressIndicator()
            : Wrap(
                runSpacing: 5,
                spacing: 5,
                children: pokemonTypesData.defenseRelation
                    .map((e) => DamageRelationChip(type: e.$1, value: e.$2))
                    .toList()),
        const SizedBox(height: 8),
        Text("Type Attacks", style: textTheme.titleSmall),
        Text(
            "The effectiveness of ${currentPokemon.name}'s attacks on each type.",
            style: textTheme.bodySmall),
        const SizedBox(height: 8),
        pokemonTypesData == null
            ? const LinearProgressIndicator()
            : Wrap(
                runSpacing: 5,
                spacing: 5,
                children: pokemonTypesData.attackRelation
                    .map((e) => DamageRelationChip(type: e.$1, value: e.$2))
                    .toList()),
      ]),
    );
  }
}
