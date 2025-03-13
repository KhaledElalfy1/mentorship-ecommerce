import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/onboarding/data/onboarding_model.dart';
import 'package:mentorship_ecommerce/features/onboarding/presentation/views/widgets/onboarding_widgets/onboarding_body_widget.dart';
import '../../../../../../core/utils/app_color.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            height: 352.h,
            width: MediaQuery.sizeOf(context).width,
            color: AppColor.blackgrey2,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 90.h),
            child: OnboardingBodyWidget(
              onboardingModel: onboardingModel,
            )),
      ],
    );
  }
}
