import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final String ImageLabel = Platform.isIOS
      ? "assets/svgs/Apple store.svg"
      : "assets/svgs/App Store.svg";
  final Color textColor = Platform.isIOS
      ? AppColor.whiteColor
      : AppColor.blackColor;

   CustomButton({
    super.key,
    required this.label,
    this.onPressed,
  });

   Future<void> _launchStore() async {
    final Uri storeUrl = Uri.parse(
        Platform.isIOS
            ? "itms-apps://apps.apple.com" // Apple App Store
            : "https://play.google.com/store" // Google Play Store
        );

    if (await canLaunchUrl(storeUrl)) {
      await launchUrl(storeUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $storeUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.h,
      decoration: BoxDecoration(
        color: Platform.isIOS ? AppColor.blackColor : AppColor.whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: CupertinoButton(
        onPressed: onPressed ?? _launchStore,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ImageLabel),
            const SizedBox(width: 20),
            Text(
              label,
              style: Styles.textStyle17.copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}