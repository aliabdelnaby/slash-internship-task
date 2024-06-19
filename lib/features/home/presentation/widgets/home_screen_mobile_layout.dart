import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/app_strings.dart';
import 'package:slash_task/features/home/presentation/widgets/custom_appbar.dart';
import 'package:slash_task/features/home/presentation/widgets/custom_search_widget.dart';
import 'package:slash_task/features/home/presentation/widgets/custom_section_title_widget.dart';
import 'package:slash_task/features/home/presentation/widgets/slide_banner.dart';

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
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const CustomSearchWidget(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const SlideBanners(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const CustomSectionTitleWidget(
                title: AppStrings.categories,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
