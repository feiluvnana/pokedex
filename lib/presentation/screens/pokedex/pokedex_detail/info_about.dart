part of "pokedex_detail_screen.dart";

class _InfoAboutTab extends ConsumerWidget {
  final PokemonEntity currentPokemon;
  const _InfoAboutTab({required this.currentPokemon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final pokemonSpeciesData =
        ref.watch(getPokemonSpeciesProvider(currentPokemon.name)).value;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("General", style: textTheme.titleSmall),
          pokemonSpeciesData == null
              ? const LinearProgressIndicator()
              : Text(pokemonSpeciesData.description),
          Text("Size", style: textTheme.titleSmall),
          Card(
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
          ),
          const SizedBox(height: 8),
          Text("Breeding", style: textTheme.titleSmall),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (pokemonSpeciesData != null) ...[
                Row(children: _buildGenderRowItems(pokemonSpeciesData)),
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
          )
        ],
      ),
    );
  }

  List<Widget> _buildGenderRowItems(PokemonSpeciesEntity pokemonSpeciesData) {
    List<Widget> genderRowItems = [const Text("Gender: ")];

    if (pokemonSpeciesData.isGenderless) {
      genderRowItems.addAll([
        const Stack(
          children: [
            Icon(Icons.transgender, color: Colors.grey),
            Icon(Icons.close, color: Colors.grey),
          ],
        ),
        const Text("Genderless")
      ]);
    }

    if (!pokemonSpeciesData.isTotallyFemale) {
      genderRowItems.addAll([
        const Icon(Icons.male, color: Colors.blue),
        Text("${pokemonSpeciesData.maleInPercentage.toStringAsFixed(1)}%"),
        const SizedBox(width: 8)
      ]);
    }

    if (!pokemonSpeciesData.isTotallyMale) {
      genderRowItems.addAll([
        const Icon(Icons.female, color: Colors.pink),
        Text("${pokemonSpeciesData.femaleInPercentage.toStringAsFixed(1)}%")
      ]);
    }

    return genderRowItems;
  }
}
