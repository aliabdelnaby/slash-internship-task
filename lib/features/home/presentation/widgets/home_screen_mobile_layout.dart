import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/app_assets.dart';
import 'package:slash_task/core/utils/app_colors.dart';
import 'package:slash_task/core/utils/app_strings.dart';
import 'package:slash_task/core/utils/app_styles.dart';
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
              const SizedBox(
                height: 124,
                child: CategoriesListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      separatorBuilder: (context, index) =>
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Column(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              radius: 40,
              child: Image.asset(
                Assets.imagesShirt,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const Text(
              AppStrings.fashion,
              style: AppTextStyle.style14W400,
            ),
          ],
        );
      },
    );
  }
}
