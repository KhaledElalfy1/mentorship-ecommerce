import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class CustomButtonOnboardingWidget extends StatelessWidget {
  const CustomButtonOnboardingWidget({super.key, required this.height, required this.width, required this.buttonText, required this.onTap});
  final double height;
  final double width;
  final String buttonText;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(  
        borderRadius: BorderRadius.circular(30.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), 
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              border: Border.all(
                width: 2.w,
                color: AppColor.whiteColor,
              ),
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: Center(
              child: Text(
               buttonText,
                style: Styles.textStyle16.copyWith(color: AppColor.whiteColor),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
