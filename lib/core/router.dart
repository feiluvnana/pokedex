import 'package:go_router/go_router.dart';
import 'package:test_/presentation/screens/home/home_screen.dart';

final tRouter = GoRouter(initialLocation: HomeScreen.routeName, routes: [
  GoRoute(
      path: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen())
]);
