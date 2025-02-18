import 'package:flutter/cupertino.dart';
import 'package:mentorship_ecommerce/features/onboarding/data/onboarding_content.dart';
import 'package:mentorship_ecommerce/features/onboarding/presentation/views/widgets/onboarding_widgets/onboarding_body.dart';

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
          });
        },
        itemBuilder: (_, index) {
          return OnboardingBody(
            image: content[index].image,
            text1: content[index].text1,
            text2: content[index].text2,
            dotNum: content.length,
            currentIndex: index,
          );
        });
  }
}
