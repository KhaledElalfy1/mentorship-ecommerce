import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/utils/widgets/font_weight_helper.dart';
import 'package:mentorship_ecommerce/features/home/data/models/group_card_model.dart';

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
              SizedBox(
                width: 5.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    SizedBox(
                      height: 42.h,
                    ),
                  Text(groupCardModel.name,style: Styles.textStyle13.copyWith(color: AppColor.coolGray)),
                  SizedBox(
                    height: 16.h,
                  ),
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
