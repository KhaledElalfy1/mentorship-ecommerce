import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/update/presentation/view/widgets/update_screen_body.dart';
import 'widgets/welcome_widgets/welcome_body.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UpdateScreen(),
    );
  }
}
