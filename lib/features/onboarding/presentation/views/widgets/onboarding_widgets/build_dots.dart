import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/app_color.dart';

class BuildDots extends StatelessWidget {
  final int currentIndex;
  final int index1;
  const BuildDots(
      {super.key, required this.index1, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0.w),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        height: 6.h,
        width: 6.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColor.whiteColor, width: 1.w),
          color:
              currentIndex == index1 ? AppColor.whiteColor : Colors.transparent,
        ),
      ),
    );
  }
}
