import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/onboarding/presentation/views/widgets/onboarding_widgets/onboarding_pageview.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingPageView(),
    );
  }
}