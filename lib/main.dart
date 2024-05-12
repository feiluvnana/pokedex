import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:test_/core/theme.dart';
import 'package:test_/presentation/screens/ability/ability_detail_screen.dart';
import 'package:test_/presentation/screens/home/home_screen.dart';
import 'package:test_/presentation/screens/pokedex/pokedex_screen.dart';

void main() {
  runApp(const Pokedex());
}

final router = GoRouter(initialLocation: HomeScreen.routeName, routes: [
  GoRoute(
      path: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
            path: PokedexScreen.routeName,
            builder: (context, state) => const PokedexScreen())
      ]),
  GoRoute(
      path: AbilityDetailScreen.fullRouteName,
      builder: (context, state) =>
          AbilityDetailScreen(abilityName: state.pathParameters["name"]!))
]);

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
          routerConfig: router,
          debugShowCheckedModeBanner: false,
          theme: tLightTheme),
    );
  }
}
