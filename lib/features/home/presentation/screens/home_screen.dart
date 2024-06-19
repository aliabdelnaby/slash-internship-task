import 'package:flutter/material.dart';
import 'package:slash_task/features/home/presentation/widgets/adaptive_layout_widget.dart';
import 'package:slash_task/features/home/presentation/widgets/home_screen_mobile_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const HomeScreenMobileLayout(),
        webLayout: (context) => const SizedBox(),
      ),
    );
  }
}
