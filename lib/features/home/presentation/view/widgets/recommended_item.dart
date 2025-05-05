import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/core/helper/font_family_helper.dart';

import '../../../../../core/utils/app_color.dart';
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
        shadowColor: AppColor.backBtnColor,
        elevation: .4,
        color: AppColor.whiteColor,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
              child: Image.network(
                "https://i.pinimg.com/736x/74/10/a2/7410a228cfd8a06233b8b6103ac90b90.jpg",
                fit: BoxFit.cover,
              ),
            ),
            10.addHorizontalSpace,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recommendedItemModel.title,
                  style: Styles.textStyle12.copyWith(
                    fontFamily: FontFamilyHelper.productSansMedium,
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
