import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/update/presentation/view/widgets/update_screen_body.dart';


class UpdateView extends StatelessWidget {
  const UpdateView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: UpdateScreen(),
    );
  }
}