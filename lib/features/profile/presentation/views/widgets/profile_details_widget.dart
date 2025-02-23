import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/svgs.dart';

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
        Padding(
          padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 18.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    icon,
                    color: AppColor.svgColor,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    text,
                    style: Styles.textStyle14
                        .copyWith(color: AppColor.charcoalBrown),
                  )
                ],
              ),
              isNeededIcon == true
                  ? IconButton(
                      onPressed: onPressed,
                      icon: SvgPicture.asset(
                        Svgs.rightArrowIcon,
                        color: AppColor.charcoalBrown,
                      ))
                  : const SizedBox.shrink()
            ],
          ),
        ),
        isNeededIcon == true
            ? SizedBox(
                height: 10.h,
              )
            : SizedBox(
                height: 20.h,
              ),
        const Divider(
          color: AppColor.dividerColor,
        )
      ],
    );
  }
}
