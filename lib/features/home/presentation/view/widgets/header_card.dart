import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/features/home/data/models/main_card_model.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_card.dart';
import 'dots_indicator.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key, required this.currentPageIndex});
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      mainCardModel: MainCardModel(
        image: "https://i.pinimg.com/736x/fd/3d/0b/fd3d0bf30cdd3f80c3732b61b02b6f18.jpg",
        borderRadius: BorderRadius.circular(15.r),
        padding: const EdgeInsets.only(
          left: 32,
          right: 32,
          top: 30,
        ).w,
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
          37.addVerticalSpace,
          Align(alignment: Alignment.bottomCenter, child: DotsIndicator(currentPageIndex: currentPageIndex))
        ]),
      ),
    );
  }
}
