import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:test_/core/constant.dart';

import 'package:test_/core/theme.dart';
import 'package:test_/domain/entities/pokemon_entity.dart';
import 'package:test_/presentation/screens/ability/ability_detail_screen.dart';
import 'package:test_/presentation/screens/ability/ability_screen.dart';
import 'package:test_/presentation/screens/home/home_screen.dart';
import 'package:test_/presentation/screens/pokedex/pokedex_detail/pokedex_detail_screen.dart';
import 'package:test_/presentation/screens/pokedex/pokedex_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(const Pokedex());
}

final router = GoRouter(initialLocation: tHomeRoute, routes: [
  GoRoute(
      path: tHomeRoute,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
            path: "pokedex",
            builder: (context, state) => const PokedexScreen()),
        GoRoute(
            path: "pokedex/:id",
            redirect: (context, state) =>
                state.extra == null ? tPokedexRoute : null,
            builder: (context, state) {
              var extra =
                  state.extra as (int, PagingController<int, PokemonEntity>);
              return PokedexDetailScreen(
                  initialIndex: extra.$1, pagingController: extra.$2);
            }),
        GoRoute(
            path: "ability",
            builder: (context, state) => const AbilityScreen()),
        GoRoute(
            path: "ability/:name",
            builder: (context, state) =>
                AbilityDetailScreen(abilityName: state.pathParameters["name"]!))
      ]),
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
