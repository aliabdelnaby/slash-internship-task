import 'package:flutter/material.dart';
import 'package:slash_task/features/adaptive_layout_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const HomeViewMobileLayout(),
        webLayout: (context) => const SizedBox(),
      ),
    );
  }
}

class HomeViewMobileLayout extends StatelessWidget {
  const HomeViewMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Mobile Layout',
        ),
      ),
    );
  }
}
