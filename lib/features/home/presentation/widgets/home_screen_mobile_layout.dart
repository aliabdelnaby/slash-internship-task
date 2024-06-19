import 'package:flutter/material.dart';
import 'package:slash_task/features/home/presentation/widgets/custom_appbar.dart';

class HomeScreenMobileLayout extends StatelessWidget {
  const HomeScreenMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const CustomAppBar(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
