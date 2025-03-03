import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/profile/presentation/views/widgets/profile_details_icons.dart';
import '../../../../../core/utils/app_color.dart';

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget(
      {super.key,
      required this.icon,
      required this.text,
      this.isNeededIcon = false,
      this.onPressed});
  final String icon;
  final String text;
  final bool? isNeededIcon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileDetailsIcons(
          icon: icon,
          text: text,
          isNeededIcon: isNeededIcon,
          onPressed: onPressed,
        ),
        isNeededIcon == true ? SizedBox(height: 10.h) : SizedBox(height: 20.h),
        const Divider(
          color: AppColor.dividerColor,
        )
      ],
    );
  }
}
