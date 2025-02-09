import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/woman_page/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index)=>  Padding(
        padding:const  EdgeInsets.only(right: 6.0),
        child: CustomDotIndicator(isActive: index==currentPageIndex),
      )),
    );
  }
}