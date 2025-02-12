import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/data/models/recommended_item_model.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({super.key, required this.recommendedItemModel});
  final RecommendedItemModel recommendedItemModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 203.w,
      child: Card(
        child: Row(
          children: [
            Image.asset(
              Assets.recommendedImage1,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recommendedItemModel.title,
                  style: Styles.textStyle12.copyWith(
                    fontFamily: Constants.productSansMedium,
                    color: AppColor.gunmetalGray,
                  ),
                ),
                Text(
                  '\$ ${recommendedItemModel.price}',
                  style: Styles.textStyle16.copyWith(
                    color: AppColor.gunmetalGray,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
