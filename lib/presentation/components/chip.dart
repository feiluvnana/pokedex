import 'package:flutter/material.dart';
import 'package:test_/core/colors.dart';

class TypeChip extends StatelessWidget {
  final String label;

  const TypeChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 65,
      alignment: Alignment.topCenter,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Colors.white38, borderRadius: BorderRadius.circular(10)),
      child: Text(label,
          style: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: Colors.white)),
    );
  }
}

class EggGroupChip extends StatelessWidget {
  final String label;

  const EggGroupChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.loose(const Size(120, 20)),
      padding: const EdgeInsets.only(bottom: 2, left: 8, right: 8),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: tEggGroupColor[label]?.withOpacity(0.38),
          borderRadius: BorderRadius.circular(10)),
      child: Text(label, style: Theme.of(context).textTheme.labelSmall),
    );
  }
}

class DamageRelationChip extends StatelessWidget {
  final String type;
  final double value;

  const DamageRelationChip(
      {super.key, required this.type, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.loose(const Size(120, 20)),
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.only(bottom: 2, left: 8, right: 8),
      decoration: BoxDecoration(
          color: tTypeColors[type]?.withOpacity(0.38),
          borderRadius: BorderRadius.circular(10)),
      child: Text("$type x${value.toString().replaceAll(RegExp(r".0+"), "")}",
          style: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: tTypeColors[type])),
    );
  }
}
