import 'package:flutter/material.dart';
import 'active_dot.dart';
import 'un_active_dot.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) =>
      isActive ? const ActiveDot() : const UnActiveDot();
}
