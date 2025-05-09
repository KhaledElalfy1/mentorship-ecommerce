import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';

class ActiveDot extends StatelessWidget {
  const ActiveDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 2,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 8.w,
        height: 8.h,
        decoration: ShapeDecoration(
          color: AppColor.dotsBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
      ),
    );
  }
}
