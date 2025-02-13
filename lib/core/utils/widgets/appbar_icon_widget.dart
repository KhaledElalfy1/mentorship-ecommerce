import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarIconWidget extends StatelessWidget {
  const AppbarIconWidget(
      {super.key,
      required this.iconWidget,
      required this.iconColor,
      required this.onTap,
      this.isPadding = true});
  final IconData iconWidget;
  final Color iconColor;
  final Function() onTap;
  final bool isPadding;

  @override
  Widget build(BuildContext context) {
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
      child: IconButton(
        onPressed: onTap,
        icon: Padding(
          padding:
              isPadding == true ? EdgeInsets.only(left: 3.w) : EdgeInsets.zero,
          child: Icon(
            iconWidget,
            size: 20.sp,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
