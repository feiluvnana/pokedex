part of "pokedex_detail_screen.dart";

class _InfoPanelAbilitySection extends StatelessWidget {
  final PokemonEntity currentPokemon;
  const _InfoPanelAbilitySection({required this.currentPokemon});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: currentPokemon.abilities
            .map((e) => AbilityNameCard(e,
                backgroundColor: tTypeColors[currentPokemon.types.first]!))
            .toList());
  }
}
