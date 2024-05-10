part of "pokedex_detail_screen.dart";

class _InfoPanelSizeSection extends StatelessWidget {
  const _InfoPanelSizeSection({required this.currentPokemon});

  final PokemonEntity currentPokemon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
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
    );
  }
}
