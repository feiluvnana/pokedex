part of "pokedex_detail_screen.dart";

class _InfoPanelAbilitySection extends StatelessWidget {
  final PokemonEntity currentPokemon;
  const _InfoPanelAbilitySection({required this.currentPokemon});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
        children: currentPokemon.abilities
            .map((e) => ListTile(
                onTap: () {
                  context.push("${AbilityDetailScreen.routeName}/$e");
                },
                leading: Text("🌟", style: textTheme.titleMedium),
                title: Text(e, style: textTheme.bodySmall)))
            .toList());
  }
}
