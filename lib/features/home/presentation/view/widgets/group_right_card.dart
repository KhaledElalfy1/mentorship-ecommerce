import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/core/helper/font_family_helper.dart';

import '../../../../../core/helper/font_weight_helper.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/group_card_model.dart';

class GroupRightCard extends StatelessWidget {
  const GroupRightCard({super.key, required this.groupCardModel});
  final GroupCardModel groupCardModel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: SizedBox(
        width: 156.w,
        height: 194.h,
        child: Container(
          decoration: ShapeDecoration(
            color: AppColor.featuredCardBackgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10).r,
            ),
          ),
          child: Row(
            children: [
              8.addHorizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  36.addVerticalSpace,
                  Text(groupCardModel.name, style: Styles.textStyle13.copyWith(color: AppColor.coolGray, letterSpacing: .23.sp)),
                  16.addVerticalSpace,
                  Text(
                    groupCardModel.description,
                    style: Styles.textStyle18.copyWith(
                      fontFamily: FontFamilyHelper.productSansLight,
                      color: AppColor.gunmetalGray,
                      fontWeight: FontWeightHelper.light,
                    ),
                  ),
                ],
              ),
              17.addHorizontalSpace,
              Expanded(
                child: Image.network(
                  groupCardModel.image,
                  width: 60.w,
                  height: 194.h,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
