import 'package:slash_task/core/utils/app_assets.dart';
import 'package:slash_task/features/home/data/models/recommended_model.dart';

List<RecommendedModel> recommendedList = [
  RecommendedModel(
    imageUrl: Assets.imagesLeatherJacket,
    name: "Leather Jacket",
    price: "EGP 340",
    brandImageUrl: Assets.imagesBrand3,
  ),
  RecommendedModel(
    imageUrl: Assets.imagesDogMedal,
    name: "Dog Medal",
    price: "EGP 45",
    brandImageUrl: Assets.imagesBrand1,
  ),
  RecommendedModel(
    imageUrl: Assets.imagesLeatherBracelet,
    name: "Leather Bracelet",
    price: "EGP 80",
    brandImageUrl: Assets.imagesBrand2,
  ),
];
