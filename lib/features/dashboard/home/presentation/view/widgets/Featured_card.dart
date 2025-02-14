import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/data/models/featured_product_card_model.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({
    super.key,
    required this.featuredProductCardModel,
  });
  final FeaturedProductCardModel featuredProductCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        color: AppColor.featuredCardBackgroundColor,
        shape: RoundedRectangleBorder(),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60.0, top: 44.0),
            child: Column(
              children: [
                Text(
                  featuredProductCardModel.name,
                  style: Styles.textStyle12.copyWith(
                    fontFamily: Constants.productSansLight,
                    color: AppColor.coolGray,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  featuredProductCardModel.description,
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
          Stack(alignment: AlignmentDirectional.center, children: [
            Center(
              child: Container(
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
              ),
            ),
            Image.asset(featuredProductCardModel.image),
          ]),
        ],
      ),
    );
  }
}
