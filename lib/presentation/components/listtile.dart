import 'package:flutter/material.dart';
import 'package:test_/domain/entities/poke_news_entity.dart';

class NewsListTile extends StatelessWidget {
  final PokeNewsEntity entity;

  const NewsListTile(this.entity, {super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      title: Text(entity.title),
      titleTextStyle: textTheme.titleSmall,
      subtitle: Text(entity.createdAt.toIso8601String()),
      trailing: Image.network(entity.cover),
      horizontalTitleGap: 100,
    );
  }
}
