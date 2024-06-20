import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.74,
          height: MediaQuery.of(context).size.height * 0.052,
          child: TextField(
            decoration: InputDecoration(
              isDense: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
              hintText: AppStrings.searchHere,
              labelStyle: AppTextStyle.style14W400.copyWith(
                color: const Color(0xff969696),
              ),
              prefixIcon: Image.asset(
                Assets.imagesSearchNormal,
              ),
              filled: true,
              fillColor: AppColors.textfield,
            ),
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.textfield,
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: MediaQuery.of(context).size.height * 0.052,
            child: Image.asset(
              Assets.imagesFilter,
            ),
          ),
        ),
      ],
    );
  }
}
