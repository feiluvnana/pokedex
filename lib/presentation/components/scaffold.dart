import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pokedex/core/constant.dart';

class PokeScaffold extends StatefulWidget {
  static const pokeballSize = 200.0;
  final Widget? body;

  final Color? backgroundColor;

  const PokeScaffold({super.key, this.body, this.backgroundColor});

  @override
  State<PokeScaffold> createState() => _PokeScaffoldState();
}

class _PokeScaffoldState extends State<PokeScaffold> {
  double showPokeballRatio = 1;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final scrollController = PrimaryScrollController.maybeOf(context);
    scrollController?.addListener(() {
      if (showPokeballRatio == max(1 - scrollController.offset / 100, 0)) {
        return;
      }
      setState(() {
        showPokeballRatio = max(1 - scrollController.offset / 100, 0);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: widget.backgroundColor,
        body: Stack(
          children: [
            widget.body ?? Container(),
            if (showPokeballRatio != 0)
              Positioned(
                  top: -PokeScaffold.pokeballSize / 2 + kToolbarHeight / 2,
                  right: -PokeScaffold.pokeballSize / 2 +
                      tIconButtonPadding +
                      tIconSize / 2,
                  child: IgnorePointer(
                    child: Image.asset("assets/images/pokeball.png",
                        color: Colors.grey[400]
                            ?.withOpacity(0.3 * showPokeballRatio),
                        width: PokeScaffold.pokeballSize,
                        height: PokeScaffold.pokeballSize,
                        filterQuality: FilterQuality.high),
                  ))
          ],
        ),
      ),
    );
  }
}
