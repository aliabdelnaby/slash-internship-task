import 'package:flutter/material.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class CustomSectionTitleWidget extends StatelessWidget {
  const CustomSectionTitleWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.style22W600,
        ),
        Row(
          children: [
            const Text(
              AppStrings.seeAll,
              style: AppTextStyle.style14W500,
            ),
            const SizedBox(width: 5),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffE6E6E6),
                borderRadius: BorderRadius.circular(4.0),
              ),
              height: MediaQuery.of(context).size.height * 0.02,
              width: MediaQuery.of(context).size.width * 0.042,
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
