import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/utils/svgs.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.title, this.isNeedBellIcon = false});
  final String? title;
  final bool? isNeedBellIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 21.w, right: 21.w),
      child: Row(
        mainAxisAlignment: isNeedBellIcon == true
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: SvgPicture.asset('assets/icons/app bar icon.svg')),
          isNeedBellIcon == false
              ? SizedBox(
                  width: MediaQuery.of(context).size.width / 5,
                )
              : const SizedBox.shrink(),
          Text(
            title ?? '',
            style: Styles.textStyle20.copyWith(color: Colors.black),
          ),
          isNeedBellIcon == true
              ? IconButton(
                  onPressed: () {
                 //   Navigator.popAndPushNamed(context, Routes.wishListBoard);
                  },
                  icon: SvgPicture.asset(Svgs.bellIcon))
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
