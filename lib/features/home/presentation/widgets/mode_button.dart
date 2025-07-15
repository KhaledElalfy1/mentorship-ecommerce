import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/core/helper/font_family_helper.dart';

import '../../../../core/helper/font_weight_helper.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/styles.dart';
import '../../data/models/mode_model.dart';

class ModeButton extends StatelessWidget {
  const ModeButton({super.key, required this.modeModel, required this.isActive});
  final ModeModel modeModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110.w,
      height: 30.h,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.w)),
          color: isActive ? AppColor.whiteColor : AppColor.containerMode,
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              modeModel.icon,
              size: 21.w,
              color: isActive ? AppColor.gunmetalGray : AppColor.unAvtiveMode,
            ),
            8.addHorizontalSpace,
            Text(
              modeModel.title,
              style: Styles.textStyle14.copyWith(
                height: 1.43,
                fontFamily: FontFamilyHelper.productSansMedium,
                fontWeight: FontWeightHelper.medium,
                color: isActive ? AppColor.gunmetalGray : AppColor.unAvtiveMode,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
