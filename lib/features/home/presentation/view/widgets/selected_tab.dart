import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class SelectedTab extends StatelessWidget {
  const SelectedTab({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColor.selectedTabColor,
              width: 2,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
          ),
          child: Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColor.selectedTabColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColor.selectedTabColor,
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 25.r,
              )),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          text,
          style: Styles.textStyle10,
        )
      ],
    );
  }
}
