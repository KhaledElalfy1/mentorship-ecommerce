import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/features/home/data/models/recommended_item_model.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/recommended_item.dart';

class RecommendedItems extends StatelessWidget {
  const RecommendedItems({super.key});
  final list = const [
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66.h,
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: RecommendedItem(
              recommendedItemModel: list[index],
            ),
          ),
        ),
      ),
    );
  }
}
