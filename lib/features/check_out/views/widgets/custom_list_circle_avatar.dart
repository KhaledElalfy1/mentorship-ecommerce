import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';

class CustomListCircleAvatar extends StatelessWidget {
  const CustomListCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 5.h), // تقليل المسافة بين النقاط
          child: CircleAvatar(
            radius: 1.8.r, // حجم النقطة
            backgroundColor: AppColor.darkGray,
          ),
        ),
      ),
    );
  }
}
