import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/features/home/data/models/recommended_item_model.dart';

const featuredProductlist = [
  Assets.productImage1,
  Assets.productImage2,
  Assets.productImage3,
];

  const recommendedItemslist =  [
    RecommendedItemModel(
      imageUrl: Assets.recommendedImage1,
      title: 'White fashion hoodie',
      price: 39.99,
    ),
    RecommendedItemModel(
      imageUrl: Assets.recommendedImage2,
      title: 'Cotton T-shirt',
      price: 30.99,
    ),
  ];