import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/app_colors.dart';
import 'package:slash_task/core/utils/app_styles.dart';
import 'package:slash_task/features/home/data/models/best_selling_model.dart';

class BestSellingListView extends StatelessWidget {
  const BestSellingListView({super.key, required this.items});
  final List<BestSellingModel> items;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      separatorBuilder: (context, index) =>
          SizedBox(width: MediaQuery.of(context).size.width * 0.03),
      itemBuilder: (context, index) {
        final item = items[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(item.imageUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: AppColors.favoriteGreyColor,
                      radius: 15,
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Text(
              item.name,
              style: AppTextStyle.style16W400,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.004),
            Row(
              children: [
                Text(
                  item.price,
                  style: AppTextStyle.style16W700,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Image.asset(
                  item.brandImageUrl,
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
