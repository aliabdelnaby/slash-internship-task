import 'package:flutter/material.dart';
import '../../../../core/utils/app_strings.dart';
import '../../data/datasources/best_selling_list_data.dart';
import '../../data/datasources/category_items_list.dart';
import '../../data/datasources/new_arrival_list_data.dart';
import '../../data/datasources/recommended_list_data.dart';
import 'best_selling_list_view.dart';
import 'categories_list_view.dart';
import 'custom_appbar.dart';
import 'custom_search_widget.dart';
import 'custom_section_title_widget.dart';
import 'new_arrival_list_view.dart';
import 'recommended_for_you_list_view.dart';
import 'slide_banner.dart';

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
