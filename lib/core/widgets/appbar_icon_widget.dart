import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_color.dart';

class AppbarIconWidget extends StatelessWidget {
  const AppbarIconWidget(
      {super.key,
      required this.iconWidget,
      required this.iconColor,
      required this.onTap,
      this.isPadding = true,
      this.height = 36,
      this.width = 36,
      this.size = 20});
  final IconData iconWidget;
  final Color iconColor;
  final Function() onTap;
  final bool isPadding;
  final double? height;
  final double? width;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: AppColor.gunmetalGray,
      child: Container(
        height: height,
        width: width,
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
        child: Padding(
          padding:
              isPadding == true ? EdgeInsets.only(left: 3.w) : EdgeInsets.zero,
          child: Icon(
            iconWidget,
            size: size,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
