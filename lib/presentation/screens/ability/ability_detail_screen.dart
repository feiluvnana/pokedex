import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_/domain/providers/ability_provider.dart';

class AbilityDetailScreen extends ConsumerWidget {
  static const routeName = "/ability";
  static const fullRouteName = "/ability/:name";
  final String abilityName;
  const AbilityDetailScreen({super.key, required this.abilityName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Text(ref.watch(getAbilityProvider(abilityName)).value?.toString() ??
          "Haha"),
    );
  }
}
