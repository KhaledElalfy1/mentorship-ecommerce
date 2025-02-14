import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/svgs.dart';
import 'package:mentorship_ecommerce/features/profile/presentation/views/widgets/profile_details_widget.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440.h,
      width: 327.w,
      margin: EdgeInsets.only(top: 58.h),
      padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: AppColor.whiteColor,
          border: Border.all(color: AppColor.borderColor),
          boxShadow: [
            BoxShadow(
                color: AppColor.shadowColor.withOpacity(0.2),
                blurRadius: 16,
                spreadRadius: -8,
                offset: const Offset(0, 8))
          ]),
      child: Column(
        children: [
          ProfileDetailsWidget(
            icon: Svgs.favoriteIcon,
            text: "My Wishlist",
            isNeededIcon: true,
            onPressed: () {},
          ),
          const ProfileDetailsWidget(icon: Svgs.logoutIcon, text: "Log out"),
        ],
      ),
    );
  }
}
