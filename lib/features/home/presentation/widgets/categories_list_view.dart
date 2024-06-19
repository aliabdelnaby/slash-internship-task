import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/app_colors.dart';
import 'package:slash_task/core/utils/app_styles.dart';
import 'package:slash_task/features/home/data/models/category_model.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key, required this.items});
  final List<CategoryModel> items;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (context, index) =>
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
          onTap: () {},
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: MediaQuery.of(context).size.height * 0.047,
                child: Image.asset(
                  item.imageUrl,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                item.name,
                style: AppTextStyle.style14W400,
              ),
            ],
          ),
        );
      },
    );
  }
}
