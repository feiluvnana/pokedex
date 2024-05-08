import 'package:flutter/material.dart';

class PokeFilledButton extends StatelessWidget {
  static const pokeballRightOverflow = 20.0;

  final void Function()? onPressed;
  final Widget child;
  final Color? backgroundColor;
  const PokeFilledButton(
      {super.key,
      required this.onPressed,
      required this.child,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        children: [
          Positioned.fill(
            child: FilledButton(
                style: FilledButton.styleFrom(
                    backgroundColor: backgroundColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: onPressed,
                child: child),
          ),
          Positioned(
              top: -pokeballRightOverflow,
              bottom: -pokeballRightOverflow,
              right: -pokeballRightOverflow,
              child: IgnorePointer(
                child: Image.asset("assets/images/pokeball.png",
                    color: Colors.white.withOpacity(0.3),
                    filterQuality: FilterQuality.high),
              )),
          Positioned(
              top: -3 * pokeballRightOverflow,
              left: -3 * pokeballRightOverflow,
              bottom: 1.5 * pokeballRightOverflow,
              child: IgnorePointer(
                child: Image.asset("assets/images/pokeball.png",
                    color: Colors.white.withOpacity(0.3),
                    filterQuality: FilterQuality.high),
              )),
        ],
      ),
    );
  }
}
