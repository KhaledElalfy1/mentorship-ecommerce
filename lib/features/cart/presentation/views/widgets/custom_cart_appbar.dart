import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/widgets/appbar_icon_widget.dart';

class CustomCartAppbar extends StatelessWidget {
  const CustomCartAppbar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:20.w, right: 31.w, top: 60.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppbarIconWidget(
              iconWidget: Icons.arrow_back_ios,
              iconColor: AppColor.backBtnColor,
              onTap: () {
                Navigator.pop(context);
              }),
          SizedBox(
            width: 85.w,
          ),
          Text(
            title,
            style: Styles.textStyle18,
          )
        ],
      ),
    );
  }
}
