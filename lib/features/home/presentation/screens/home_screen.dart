import 'package:flutter/material.dart';
import '../widgets/adaptive_layout_widget.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/home_screen_mobile_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: AdaptiveLayout(
        mobileLayout: (context) => const HomeScreenMobileLayout(),
        webLayout: (context) => const SizedBox(),
      ),
    );
  }
}
