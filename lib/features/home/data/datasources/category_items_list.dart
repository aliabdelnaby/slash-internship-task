import 'package:slash_task/core/utils/app_assets.dart';
import 'package:slash_task/core/utils/app_strings.dart';
import 'package:slash_task/features/home/data/models/category_model.dart';

List<CategoryModel> categoryList = [
  CategoryModel(
    imageUrl: Assets.imagesShirt,
    name: AppStrings.fashion,
  ),
  CategoryModel(
    imageUrl: Assets.imagesDice,
    name: AppStrings.games,
  ),
  CategoryModel(
    imageUrl: Assets.imagesGlasses,
    name: AppStrings.accessories,
  ),
  CategoryModel(
    imageUrl: Assets.imagesBookBlank,
    name: AppStrings.books,
  ),
];
