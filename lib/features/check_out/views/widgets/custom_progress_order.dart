import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/spacing.dart';
import 'package:mentorship_ecommerce/features/check_out/views/widgets/custom_list_circle_avatar.dart';


import '../../../../core/utils/app_color.dart';

class CustomProgressOrder extends StatelessWidget {
  const CustomProgressOrder({
    super.key,  this.color,
  });
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.location_on,
              color: AppColor.blackColor, size: 28),
          horizontalSpace(12.w),
          const CustomListCircleAvatar(),
          horizontalSpace(80.w),
          const CustomListCircleAvatar(),
          horizontalSpace(12.w),
          CircleAvatar(
            radius: 10.r,
            backgroundColor:color?? AppColor.darkGray,
            child: Icon(Icons.check,
                color: AppColor.whiteColor, size: 15.sp),
          ),
        ],
      ),
    );
  }
}

