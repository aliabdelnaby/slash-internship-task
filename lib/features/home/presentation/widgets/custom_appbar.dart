import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/app_assets.dart';
import 'package:slash_task/core/utils/app_strings.dart';
import 'package:slash_task/core/utils/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          AppStrings.appName,
          style: AppTextStyle.appNameStyle,
        ),
        Row(
          children: [
            Image.asset(Assets.imagesLocation),
            SizedBox(width: MediaQuery.of(context).size.width * 0.03),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.nasrCity,
                  style: AppTextStyle.style14W400,
                ),
                Text(
                  AppStrings.cairo,
                  style: AppTextStyle.style14W700,
                ),
              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.03),
            Image.asset(
              Assets.imagesArrowdown,
              height: MediaQuery.of(context).size.height * 0.01,
            ),
          ],
        ),
        Image.asset(Assets.imagesNotifcationIcon)
      ],
    );
  }
}
