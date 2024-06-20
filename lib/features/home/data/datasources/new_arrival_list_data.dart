import 'package:slash_task/core/utils/app_assets.dart';
import 'package:slash_task/features/home/data/models/new_arrivals_model.dart';

List<NewArrivalsModel> newArrivalList = [
  NewArrivalsModel(
    imageUrl: Assets.imagesPrintedbag,
    name: "Printed bag",
    price: "EGP 180",
    brandImageUrl: Assets.imagesBrand3,
  ),
  NewArrivalsModel(
    imageUrl: Assets.imagesNotebook,
    name: "Notebook",
    price: "EGP 80",
    brandImageUrl: Assets.imagesBrand1,
  ),
  NewArrivalsModel(
    imageUrl: Assets.imagesWoolenScarf,
    name: "Woolen Scarf",
    price: "EGP 95",
    brandImageUrl: Assets.imagesBrand2,
  ),
];
