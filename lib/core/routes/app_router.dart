import 'package:go_router/go_router.dart';
import '../../features/home/presentation/screens/home_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: ((context, state) => const HomeScreen()),
    ),
  ],
);
