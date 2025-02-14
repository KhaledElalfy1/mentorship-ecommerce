import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/utils/widgets/font_weight_helper.dart';
import 'package:mentorship_ecommerce/features/home/data/models/mode_model.dart';

class ModeButton extends StatelessWidget {
  const ModeButton({super.key, required this.modeModel, required this.isActive});
  final ModeModel modeModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isActive ? 10 : 0,
      color: isActive ? AppColor.whiteColor : AppColor.containerMode,
      child: SizedBox(
        width: 84.w,
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
            SizedBox(
              width: 8.w,
            ),
            Text(
              modeModel.title,
              style: Styles.textStyle14.copyWith(
                fontFamily: Constants.productSansMedium,
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
