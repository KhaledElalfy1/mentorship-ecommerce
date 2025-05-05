import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class UnSelectedTab extends StatelessWidget {
  const UnSelectedTab({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40.w,
          height: 40.h,
          decoration: const BoxDecoration(
            color: AppColor.unSelectedTabColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: AppColor.unSelectedTabIconColor,
            size: 25.r,
          ),
        ),
        5.addVerticalSpace,
        Text(
          text,
          style: Styles.textStyle10.copyWith(
            color: AppColor.spanishGrayColor,
          ),
        )
      ],
    );
  }
}
