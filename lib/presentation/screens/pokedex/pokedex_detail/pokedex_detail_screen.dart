import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:test_/core/constant.dart';
import 'package:test_/domain/entities/evolution_chain_entity.dart';
import 'package:test_/domain/entities/pokemon_entity.dart';
import 'package:test_/domain/providers/poke_provider.dart';
import 'package:test_/presentation/components/chip.dart';
import 'package:test_/presentation/screens/ability/ability_detail_screen.dart';
import 'package:widget_arrows/widget_arrows.dart';

part "info_breeding.dart";
part "info_size.dart";
part "info_general.dart";
part "info_type_attack.dart";
part "info_type_defense.dart";
part "info_evolution_chain.dart";
part "info_ability.dart";
part "info_move.dart";
part "info.dart";
part "appbar.dart";

class PokedexDetailScreen extends StatefulWidget {
  final int initialIndex;
  final PagingController<int, PokemonEntity> pagingController;
  const PokedexDetailScreen(
      {super.key, required this.initialIndex, required this.pagingController});

  @override
  State<PokedexDetailScreen> createState() => _PokedexDetailScreenState();
}

class _PokedexDetailScreenState extends State<PokedexDetailScreen> {
  late int index = widget.initialIndex;
  late final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final currentPokemon =
        (widget.pagingController.value.itemList ?? [])[index];
    final screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: tTypeColors[currentPokemon.types.first],
      body: SlidingUpPanel(
        onPanelOpened: () =>
            scrollController.jumpTo(scrollController.position.maxScrollExtent),
        onPanelClosed: () => scrollController.jumpTo(0),
        minHeight: screenHeight / 2,
        maxHeight:
            screenHeight - kToolbarHeight - MediaQuery.paddingOf(context).top,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        body: CustomScrollView(
          controller: scrollController,
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            _AppBarSection(
              currentPokemon: currentPokemon,
              onPageChanged: (value) {
                final lastPageIndex =
                    (widget.pagingController.itemList ?? []).length - 1;
                if (value > lastPageIndex) return true;
                setState(() => index = value);
                return false;
              },
              pagingController: widget.pagingController,
              index: index,
              initialIndex: widget.initialIndex,
            ),
            SliverList.list(
                children: List.generate(50, (index) => const Text("")))
          ],
        ),
        panel: _InfoPanelSection(currentPokemon: currentPokemon),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
