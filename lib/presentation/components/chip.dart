import 'package:flutter/material.dart';

class TagChip extends StatelessWidget {

  final String label;

  const TagChip(
      {super.key,
     
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  20,
      alignment: Alignment.topCenter,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.circular(10)),
      child: Text(label,
          style: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: Colors.white)),
    );
  }
}
