import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import 'nav_bar_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                height: 6,
                width: 80,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              NavBarItem(
                onTap: () {},
                image: Assets.imagesHome,
                name: AppStrings.home,
              ),
            ],
          ),
          NavBarItem(
            onTap: () {},
            image: Assets.imagesHeart,
            name: AppStrings.favorites,
          ),
          NavBarItem(
            onTap: () {},
            image: Assets.imagesShoppingCart,
            name: AppStrings.myCart,
          ),
          NavBarItem(
            onTap: () {},
            image: Assets.imagesProfileCircle,
            name: AppStrings.profile,
          ),
        ],
      ),
    );
  }
}
