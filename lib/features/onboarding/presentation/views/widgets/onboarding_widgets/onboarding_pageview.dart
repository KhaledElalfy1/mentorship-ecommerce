import 'package:flutter/cupertino.dart';
import 'package:mentorship_ecommerce/core/functions/firebase_analytics_log_event.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';
import 'package:mentorship_ecommerce/features/onboarding/data/onboarding_model.dart';
import '../../../../data/onboarding_content.dart';
import 'onboarding_body.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  int currentIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: content.length,
      onPageChanged: (int index) {
        setState(() {
          currentIndex = index;
          firebaseAnalyticsLogEvent(
              firebaseAnalyticsEventModel: FirebaseAnalyticsEventModel(
            name: "onboarding_page_changed",
            parameters: {
              'action': "User swiped to the next page",
              'current_page': "Onboarding Page $currentIndex",
              'next_page': "Onboarding Page ${currentIndex + 1}"
            },
          ));
        });
      },
      itemBuilder: (_, index) {
        return OnboardingBody(
          onboardingModel: OnboardingModel(
              image: content[index].image,
              text1: content[index].text1,
              text2: content[index].text2,
              dotNum: content.length,
              currentIndex: currentIndex),
        );
      },
    );
  }
}
