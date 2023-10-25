import 'package:equatable/equatable.dart';

import '../utils/app_assets.dart';

class CardItemModel extends Equatable {
  final String title;
  final String image;

  const CardItemModel({
    required this.title,
    required this.image,
  });

  @override
  List<Object?> get props => [title, image];
}

List<CardItemModel> cardsDummyData = const <CardItemModel>[
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
