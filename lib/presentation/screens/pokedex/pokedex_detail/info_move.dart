part of "pokedex_detail_screen.dart";

class _InfoPanelMoveSection extends StatelessWidget {
  final PokemonEntity currentPokemon;
  const _InfoPanelMoveSection({required this.currentPokemon});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
        children: currentPokemon.moves
            .map((e) => ListTile(
                onTap: () {},
                leading: Text("🌠", style: textTheme.titleMedium),
                title: Text(e, style: textTheme.bodySmall)))
            .toList());
  }
}
