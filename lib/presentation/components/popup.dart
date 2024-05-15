import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension PopupExt on BuildContext {
  Future<String?> showGenerationPopup({List<String> selectedGens = const []}) {
    return showModalBottomSheet<String>(
        context: this,
        backgroundColor: Colors.grey[100],
        builder: (context) => Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  height: 4,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(2)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Center(
                    child: Text("Generation",
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                ),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        sliver: SliverGrid(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 1.618,
                                    mainAxisSpacing: 32,
                                    crossAxisSpacing: 32),
                            delegate: SliverChildListDelegate([
                              _GenerationButton(
                                  generation: "I",
                                  ids: const [25, 4, 150],
                                  selected: selectedGens.contains("I")),
                              _GenerationButton(
                                  generation: "II",
                                  ids: const [250, 249, 241],
                                  selected: selectedGens.contains("II")),
                              _GenerationButton(
                                  generation: "III",
                                  ids: const [257, 258, 373],
                                  selected: selectedGens.contains("III")),
                              _GenerationButton(
                                  generation: "IV",
                                  ids: const [445, 448, 493],
                                  selected: selectedGens.contains("IV")),
                              _GenerationButton(
                                  generation: "V",
                                  ids: const [583, 635, 571],
                                  selected: selectedGens.contains("V")),
                              _GenerationButton(
                                  generation: "VI",
                                  ids: const [658, 700, 654],
                                  selected: selectedGens.contains("VI")),
                              _GenerationButton(
                                  generation: "VII",
                                  ids: const [778, 727, 800],
                                  selected: selectedGens.contains("VII")),
                              _GenerationButton(
                                  generation: "VIII",
                                  ids: const [887, 831, 815],
                                  selected: selectedGens.contains("VIII")),
                              _GenerationButton(
                                  generation: "IX",
                                  ids: const [959, 911, 980],
                                  selected: selectedGens.contains("IX"))
                            ])),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ));
  }
}

class _GenerationButton extends StatelessWidget {
  static const pokeballRightOverflow = 20.0;
  final String generation;
  final List<int> ids;
  final bool selected;

  const _GenerationButton(
      {required this.generation, required this.ids, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        children: [
          Positioned.fill(
            child: FilledButton(
                style: FilledButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor:
                        selected ? Colors.green[100] : Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: () => context.pop(generation),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 10),
                    Center(
                      child: Text("Generation $generation",
                          style: Theme.of(context).textTheme.titleMedium),
                    ),
                    Expanded(
                      child: Stack(
                          children: List.generate(
                              3,
                              (index) => Align(
                                    alignment:
                                        Alignment(index.toDouble() - 1, 0),
                                    child: CachedNetworkImage(
                                        width: 70,
                                        imageUrl:
                                            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${ids[index]}.png",
                                        fit: BoxFit.contain),
                                  ))),
                    )
                  ],
                )),
          ),
          Positioned(
              top: pokeballRightOverflow,
              bottom: -pokeballRightOverflow,
              right: -pokeballRightOverflow,
              child: IgnorePointer(
                child: Image.asset("assets/images/pokeball.png",
                    color: Colors.grey.withOpacity(0.2),
                    filterQuality: FilterQuality.high),
              )),
        ],
      ),
    );
  }
}
