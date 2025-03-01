import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/font_weight_helper.dart';
import '../../../data/models/group_card_model.dart';

class GroupLeftCard extends StatelessWidget {
  const GroupLeftCard({super.key, required this.groupCardModel});
  final GroupCardModel groupCardModel;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: SizedBox(
        width: 151.w,
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
              Image.asset(groupCardModel.image),
              5.addHorizontalSpace,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  42.addVerticalSpace,
                  Text(groupCardModel.name, style: Styles.textStyle13.copyWith(color: AppColor.coolGray)),
                  16.addVerticalSpace,
                  Text(
                    groupCardModel.description,
                    style: Styles.textStyle17.copyWith(
                      fontFamily: Constants.productSansLight,
                      color: AppColor.gunmetalGray,
                      fontWeight: FontWeightHelper.light,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
