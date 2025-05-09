import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/widgets/appbar_icon_widget.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 60.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppbarIconWidget(
              iconWidget: Icons.arrow_back_ios,
              iconColor: AppColor.backBtnColor,
              onTap: () {
                Navigator.pop(context);
              }),
          AppbarIconWidget(
            isPadding: false,
              iconWidget: Icons.favorite,
              iconColor: AppColor.favoriteIconColor,
              onTap: () {
                   Navigator.popAndPushNamed(context, Routes.wishListBoard);
              }),
        ],
      ),
    );
  }
}
