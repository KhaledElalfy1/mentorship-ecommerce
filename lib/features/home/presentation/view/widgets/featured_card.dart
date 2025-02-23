import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/featured_product_card_model.dart';

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
            padding: EdgeInsets.only(left: 60.0.w, top: 44.0.h),
            child: Column(
              children: [
                Text(
                  featuredProductCardModel.name,
                  style: Styles.textStyle12.copyWith(
                    fontFamily: Constants.productSansLight,
                    color: AppColor.coolGray,
                  ),
                ),
                SizedBox(
                  height: 20.h,
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
