import 'package:flutter/material.dart';

class TagChip extends StatelessWidget {
  final double height;
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;
  const TagChip(
      {super.key,
      this.height = 16,
      required this.label,
      required this.backgroundColor,
      required this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      alignment: Alignment.center,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(height / 2)),
      child: Text(label,
          style: Theme.of(context)
              .textTheme
              .labelMedium
              ?.copyWith(color: foregroundColor)),
    );
  }
}
