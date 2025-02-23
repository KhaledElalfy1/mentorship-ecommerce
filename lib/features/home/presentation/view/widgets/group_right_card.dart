import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/font_weight_helper.dart';
import '../../../data/models/group_card_model.dart';

class GroupRightCard extends StatelessWidget {
  const GroupRightCard({super.key, required this.groupCardModel});
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
              Padding(
                padding: const EdgeInsets.only(left: 8.0).w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      SizedBox(
                      height: 40.h,
                    ),
                    Text(groupCardModel.name, style: Styles.textStyle13.copyWith(color: AppColor.coolGray)),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      groupCardModel.description,
                      style: Styles.textStyle18.copyWith(
                        fontFamily: Constants.productSansLight,
                        color: AppColor.gunmetalGray,
                        fontWeight: FontWeightHelper.light,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Image.asset(groupCardModel.image),
            ],
          ),
        ),
      ),
    );
  }
}
