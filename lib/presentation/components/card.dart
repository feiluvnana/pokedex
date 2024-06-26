import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pokedex/core/constant.dart';
import 'package:pokedex/core/status_regex.dart';
import 'package:pokedex/domain/entities/ability_entity.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/presentation/components/chip.dart';

class PokedexCard extends StatelessWidget {
  static const pokeballSize = 80.0;
  final PokemonEntity entity;

  final PagingController<int, PokemonEntity> pagingController;
  final int currentIndex;
  const PokedexCard(this.entity,
      {super.key, required this.currentIndex, required this.pagingController});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FilledButton(
      onPressed: () {
        context.go("$tPokedexRoute/detail",
            extra: (currentIndex, pagingController));
      },
      style: FilledButton.styleFrom(
          backgroundColor: tTypeColors[entity.types.first],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 8)),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: const RoundedRectangleBorder(),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: Text(entity.id,
                    style: textTheme.titleSmall
                        ?.copyWith(color: Colors.grey[700]?.withOpacity(0.5)))),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(entity.name,
                    style:
                        textTheme.titleSmall?.copyWith(color: Colors.white))),
            Expanded(
              child: Row(children: [
                Expanded(
                  flex: 2,
                  child: Wrap(
                    runSpacing: 5,
                    children:
                        entity.types.map((e) => TagChip(label: e)).toList(),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      Positioned.fill(
                          child: Image.asset("assets/images/pokeball.png",
                              color: Colors.grey[300]?.withOpacity(0.4),
                              fit: BoxFit.contain,
                              width: pokeballSize,
                              height: pokeballSize,
                              filterQuality: FilterQuality.high)),
                      Hero(
                        tag: entity.avatar!,
                        child: CachedNetworkImage(
                          fadeInDuration: Duration.zero,
                          fadeOutDuration: Duration.zero,
                          imageUrl: entity.avatar!,
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.low,
                        ),
                      )
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class AbilityCard extends StatelessWidget {
  final AbilityEntity entity;
  final int? index;
  const AbilityCard(this.entity, {super.key, this.index});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FilledButton(
      onPressed: () {
        context.go("$tAbilityRoute/${entity.name}");
      },
      style: FilledButton.styleFrom(
          backgroundColor: tGenerationColor[entity.generation],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 8)),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: const RoundedRectangleBorder(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${index == null ? "" : "$index. "}${entity.name}",
                      style:
                          textTheme.titleMedium?.copyWith(color: Colors.white)),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 3 * 2,
                    child: _AbilityText(entity.shortEffect),
                  ),
                ],
              ),
            ),
            TagChip(label: "Gen ${entity.generation}")
          ],
        ),
      ),
    );
  }
}

class AbilityNameCard extends StatelessWidget {
  final String name;
  final Color backgroundColor;
  const AbilityNameCard(this.name, {required this.backgroundColor, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FilledButton(
      onPressed: () {
        context.go("$tAbilityRoute/$name");
      },
      style: FilledButton.styleFrom(
          backgroundColor: backgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 8)),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: const RoundedRectangleBorder(),
        child: Center(
          child: Text(name,
              style: textTheme.titleMedium?.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}

class _AbilityText extends StatelessWidget {
  final String effect;
  const _AbilityText(this.effect);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    var markedText = effect.splitMapJoin(tStatusConditionRegex,
        onMatch: (match) =>
            "<${match.input.substring(match.start, match.end)}>",
        onNonMatch: (str) => str);

    var isPlainText = true;
    List<InlineSpan> spans = [];
    var indexes = RegExp("(<.+?>)").hasMatch(markedText)
        ? [
            0,
            ...RegExp("(<.+?>)")
                .allMatches(markedText)
                .map((e) => [e.start, e.end])
                .reduce((a, b) => [...a, ...b]),
            markedText.length - 1
          ]
        : [0, markedText.isEmpty ? 0 : markedText.length - 1];

    for (int i = 0; i < indexes.length - 1; i++) {
      if (isPlainText) {
        spans.add(
            TextSpan(text: markedText.substring(indexes[i], indexes[i + 1])));
      } else {
        final finalText =
            markedText.substring(indexes[i] + 1, indexes[i + 1] - 1);
        spans.add(TextSpan(
            text: finalText,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: const Duration(seconds: 30),
                    content: Text(tStatusConditionMapper.entries
                        .firstWhere((e) => e.key.hasMatch(finalText),
                            orElse: () => MapEntry(RegExp(""), ""))
                        .value)));
              },
            style: textTheme.bodyMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.white,
                decorationStyle: TextDecorationStyle.dotted)));
      }
      isPlainText = !isPlainText;
    }

    return Text.rich(TextSpan(children: spans),
        style: textTheme.bodyMedium?.copyWith(color: Colors.white));
  }
}
