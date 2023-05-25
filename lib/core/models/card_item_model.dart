import 'package:kitty_cat/core/global/app_assets.dart';

class CardItemModel {
  final String title;
  final String image;

  CardItemModel({required this.title, required this.image});
}

List<CardItemModel> cardsDummyData = [
  CardItemModel(
    title: "Cats Breeding",
    image: AppAssets.breedingCats,
  ),
  CardItemModel(
    title: "Cats Eat",
    image: AppAssets.catsEat,
  ),
  CardItemModel(
    title: "Cats Health",
    image: AppAssets.catHealth,
  ),
  CardItemModel(
    title: "Types of Cats",
    image: AppAssets.catTypes,
  ),
  CardItemModel(
    title: "Information about Cats",
    image: AppAssets.catInfo,
  ),
  CardItemModel(
    title: "Pictures of Cats",
    image: AppAssets.catPics,
  ),
];
