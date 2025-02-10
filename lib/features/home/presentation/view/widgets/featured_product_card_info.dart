import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class FeaturedProductCardInfo extends StatelessWidget {
  const FeaturedProductCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 60.0, top: 44.0),
          child: Column(
            children: [
              Text(
                'NEW COLLECTION',
                style: Styles.textStyle12.copyWith(
                  fontFamily: Constants.productSansLight,
                  color: AppColor.coolGray,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'HANG OUT\n & PARTY',
                style: Styles.textStyle20.copyWith(
                  fontFamily: Constants.productSansLight,
                  color: AppColor.textColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 40.w,
        ),
        Container(
          width: 132.w,
          height: 132.h,
          decoration: const ShapeDecoration(
            gradient: RadialGradient(colors: [
              AppColor.productBackgroundColor,
              AppColor.gradientColor1
            ], stops: [
              0.6,
              1
            ]),
            shape: OvalBorder(),
          ),
          child: Image.asset(Assets.featuredCardImage),
        )
      ],
    );
  }
}
