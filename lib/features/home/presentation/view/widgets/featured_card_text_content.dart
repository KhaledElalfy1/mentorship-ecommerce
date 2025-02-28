import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/data/models/featured_product_card_model.dart';

class FeaturedCardTextContent extends StatelessWidget {
  const FeaturedCardTextContent({super.key, required this.featuredProductCardModel});
  final FeaturedProductCardModel featuredProductCardModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
