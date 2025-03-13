import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/features/onboarding/data/onboarding_model.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 368.h,
      width: 261.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColor.grey2,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: Image.network(
          height: 349.h,
          width: 217.w,
          fit: BoxFit.fill,
          onboardingModel.image,
        ),
      ),
    );
  }
}
