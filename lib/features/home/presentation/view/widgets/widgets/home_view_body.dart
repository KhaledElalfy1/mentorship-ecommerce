import 'package:flutter/material.dart';
import 'custom_tabs.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomTabs(),
        SizedBox()
      ],
    );
  }
}
