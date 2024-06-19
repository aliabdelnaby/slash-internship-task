import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/app_assets.dart';
import 'package:slash_task/core/utils/app_colors.dart';
import 'package:slash_task/core/utils/app_strings.dart';
import 'package:slash_task/core/utils/app_styles.dart';
import 'package:slash_task/features/home/data/datasources/category_items_list.dart';
import 'package:slash_task/features/home/presentation/widgets/categories_list_view.dart';
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
                height: MediaQuery.of(context).size.height * 0.25,
                child: const BestSellingListView(
                    // items: categoryList,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BestSellingListView extends StatelessWidget {
  const BestSellingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      separatorBuilder: (context, index) =>
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(Assets.imagesStitchKeychain),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const Text(
              'Stitch Keychain',
              style: AppTextStyle.style16W400,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.004),
            Row(
              children: [
                const Text(
                  "EGP 55",
                  style: AppTextStyle.style16W700,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Image.asset(
                  Assets.imagesBrand1,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    radius: 14,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
