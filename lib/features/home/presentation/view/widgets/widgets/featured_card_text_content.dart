import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/core/helper/font_family_helper.dart';
import 'package:mentorship_ecommerce/core/helper/font_weight_helper.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/data/models/featured_product_card_model.dart';

class FeaturedCardTextContent extends StatelessWidget {
  const FeaturedCardTextContent({super.key, required this.featuredProductCardModel});
  final FeaturedProductCardModel featuredProductCardModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60.0.w, top: 40.h),
      child: Column(
        children: [
          Text(
            featuredProductCardModel.name,
            style: Styles.textStyle12.copyWith(
              fontFamily: FontFamilyHelper.productSansLight,
              fontWeight: FontWeightHelper.light,
              color: AppColor.coolGray,
            ),
          ),
          20.addVerticalSpace,
          SizedBox(
            child: Text(
              featuredProductCardModel.description,
              style: Styles.textStyle20.copyWith(
                fontFamily: FontFamilyHelper.productSansLight,
                fontWeight: FontWeightHelper.light,
                color: AppColor.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
