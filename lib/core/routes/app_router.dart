import 'package:go_router/go_router.dart';
import 'package:slash_task/main.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: ((context, state) => const HomeView()),
    ),
  ],
);
