
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class UnSelectedTab extends StatelessWidget {
  const UnSelectedTab({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5.h,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 30.w,
            height: 30.h,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: AppColor.unSelectedTabColor,
              size: 25.r,
            )),
        Text(
          text,
          style: Styles.textStyle10.copyWith(  color: AppColor.unSelectedTabColor,),
        )
      ],
    );
  }
}
