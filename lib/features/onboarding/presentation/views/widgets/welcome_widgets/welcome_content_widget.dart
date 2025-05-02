import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/functions/firebase_analytics_log_event.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';
import 'package:mentorship_ecommerce/core/services/prefs.dart';
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
            firebaseAnalyticsLogEvent(
              firebaseAnalyticsEventModel: FirebaseAnalyticsEventModel(
                name: "click_button",
                parameters: {
                  'action': "User clicked on Get Started button",
                  'current_route': "Welcome Screen",
                  'next_route': "Onboarding Screen"
                },
              ),
            );
            bool isBoardingViewSeen = Prefs.getBool(key: Constants.isBoardingViewSeen);
            bool isSigndIn = Prefs.getBool(key: Constants.isSigndIn);
            if (isSigndIn) {
              Navigator.pushReplacementNamed(context, Routes.dashboard);
            } else if (isBoardingViewSeen) {
              Navigator.pushReplacementNamed(context, Routes.login);
            } else {
              if (context.mounted) {
                Navigator.pushNamed(context, Routes.onboarding);
              }
            }
          },
        )
      ],
    );
  }
}
