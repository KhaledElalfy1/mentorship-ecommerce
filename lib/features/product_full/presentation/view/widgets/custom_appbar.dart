import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 40.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          iconWidget(Icons.arrow_back_ios,AppColor.backBtnColor, () {}),
          iconWidget(Icons.favorite,AppColor.favoriteIconColor, () {}),
        ],
      ),
    );
  }

  Widget iconWidget(IconData iconWidget, Color iconColor, Function() onTap) {
    return Container(
      height: 36.h,
      width: 36.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.161),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Center(
        child: IconButton(
          onPressed: onTap,
          icon: Icon(
            iconWidget,
            size: 20.sp,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
