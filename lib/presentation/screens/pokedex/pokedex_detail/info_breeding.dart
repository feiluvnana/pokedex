part of "pokedex_detail_screen.dart";

class _InfoPanelBreedingSection extends ConsumerWidget {
  const _InfoPanelBreedingSection({required this.currentPokemon});

  final PokemonEntity currentPokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonSpeciesData =
        ref.watch(getPokemonSpeciesProvider(currentPokemon.name)).value;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
  }
}
