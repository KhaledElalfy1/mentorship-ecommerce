import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/onboarding/presentation/views/widgets/custom_button_onboarding_widget.dart';

class WelcomeContentWidget extends StatelessWidget {
  const WelcomeContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome to GemStore! ",
              style: Styles.textStyle25.copyWith(color: AppColor.whiteColor),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              " The home for a fashionista",
              style: Styles.textStyle16.copyWith(color: AppColor.whiteColor),
            ),
            SizedBox(
              height: 80.h,
            ),
            CustomButtonOnboardingWidget(
              height: 53.h,
              width: 193.w,
              buttonText: 'Get Started',
              onTap: () {
                Navigator.pushNamed(context, Routes.onboarding);
              },
            )
          ],
        );
  }
}