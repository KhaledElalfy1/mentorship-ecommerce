import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/custom_card.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/dots_indicator.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key, required this.currentPageIndex});
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      image: Assets.cardImage,
      borderRadius: BorderRadius.circular(15.r),
      padding: const EdgeInsets.only(
        left: 32,
        right: 32,
      ),
      width: 312.w,
      height: 168.h,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(right: 8, top: 10),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Autumn\nCollection\n2021',
              style: Styles.textStyle22.copyWith(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 47.5,
        ),
        Align(alignment: Alignment.bottomCenter, child: DotsIndicator(currentPageIndex: currentPageIndex))
      ]),
    );
  }
}
