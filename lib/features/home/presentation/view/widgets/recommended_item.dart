import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/recommended_item_model.dart';

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
            10.addHorizontalSpace,
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
