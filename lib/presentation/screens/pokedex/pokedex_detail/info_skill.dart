part of "pokedex_detail_screen.dart";

class _InfoSkillTab extends StatelessWidget {
  final PokemonEntity currentPokemon;
  const _InfoSkillTab({required this.currentPokemon});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Abilities", style: textTheme.titleSmall),
          Column(
              children: currentPokemon.abilities
                  .map((e) => AbilityNameCard(e,
                      backgroundColor:
                          tTypeColors[currentPokemon.types.first]!))
                  .toList()),
          Text("Moves", style: textTheme.titleSmall),
          Column(
              children: currentPokemon.moves
                  .map((e) => ListTile(
                      onTap: () {},
                      leading: Text("🌠", style: textTheme.titleMedium),
                      title: Text(e, style: textTheme.bodySmall)))
                  .toList())
        ],
      ),
    );
  }
}
