import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/active_dot.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/un_active_dot.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) =>
    isActive ?  const ActiveDot() : const UnActiveDot();
  
}

