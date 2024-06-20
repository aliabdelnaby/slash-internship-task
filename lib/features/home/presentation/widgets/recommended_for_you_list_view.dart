import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/models/recommended_model.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';

class RecommendedForYouListView extends StatelessWidget {
  const RecommendedForYouListView({super.key, required this.items});
  final List<RecommendedModel> items;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteAddCubit(items.length),
      child: BlocBuilder<FavoriteAddCubit, FavoriteAddState>(
        builder: (context, state) {
          return ListView.separated(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            separatorBuilder: (context, index) =>
                SizedBox(width: MediaQuery.of(context).size.width * 0.03),
            itemBuilder: (context, index) {
              final item = items[index];
              final itemState = state.itemStates[index];

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
                          onTap: () => context
                              .read<FavoriteAddCubit>()
                              .toggleFavorite(index),
                          child: CircleAvatar(
                            backgroundColor: AppColors.favoriteGreyColor,
                            radius: 15,
                            child: Icon(
                              itemState.isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_outline_rounded,
                              size: 20,
                              color: itemState.isFavorite
                                  ? Colors.red
                                  : Colors.black,
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
                        onTap: () => context
                            .read<FavoriteAddCubit>()
                            .toggleAddCart(index),
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: AppColors.primaryColor,
                          child: Icon(
                            itemState.isAdded ? Icons.check : Icons.add,
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
        },
      ),
    );
  }
}
