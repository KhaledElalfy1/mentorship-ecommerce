import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorship_ecommerce/core/utils/svgs.dart';
import '../../../core/utils/app_color.dart';
import '../../../core/utils/styles.dart';
import '../../../core/utils/widgets/font_weight_helper.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: Padding(
        padding: EdgeInsets.only(left: 32.w,top: 28.h),
        child: SvgPicture.asset(
          Svgs.menuIcon,
          width: 18.w,
          height: 17.h,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 28.h),
        child: Text(
          "My Orders",
          style: Styles.textStyle18.copyWith(
            color: AppColor.myOrderColor,
            fontWeight: FontWeightHelper.medium,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}