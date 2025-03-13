import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/features/home/data/models/featured_product_card_model.dart';

class FeaturedCardImageContent extends StatelessWidget {
  const FeaturedCardImageContent({super.key, required this.featuredProductCardModel});
  final FeaturedProductCardModel featuredProductCardModel;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.center, children: [
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
      Image.network(featuredProductCardModel.image,fit: BoxFit.fill, width: 50.w,
          height: 132.h,),
    ]);
  }
}
