import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/app_strings.dart';
import 'package:slash_task/features/home/data/datasources/best_selling_list_data.dart';
import 'package:slash_task/features/home/data/datasources/category_items_list.dart';
import 'package:slash_task/features/home/data/datasources/new_arrival_list_data.dart';
import 'package:slash_task/features/home/data/datasources/recommended_list_data.dart';
import 'package:slash_task/features/home/presentation/widgets/best_selling_list_view.dart';
import 'package:slash_task/features/home/presentation/widgets/categories_list_view.dart';
import 'package:slash_task/features/home/presentation/widgets/custom_appbar.dart';
import 'package:slash_task/features/home/presentation/widgets/custom_search_widget.dart';
import 'package:slash_task/features/home/presentation/widgets/custom_section_title_widget.dart';
import 'package:slash_task/features/home/presentation/widgets/new_arrival_list_view.dart';
import 'package:slash_task/features/home/presentation/widgets/recommended_for_you_list_view.dart';
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
                child: CategoriesListView(
                  items: categoryList,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const CustomSectionTitleWidget(
                title: AppStrings.bestSelling,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.23,
                child: BestSellingListView(
                  items: bestSellingList,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const CustomSectionTitleWidget(
                title: AppStrings.newarrival,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.23,
                child: NewArrivalListView(
                  items: newArrivalList,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const CustomSectionTitleWidget(
                title: AppStrings.recommendedForYou,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.23,
                child: RecommendedForYouListView(
                  items: recommendedList,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
