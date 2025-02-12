import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/data/models/top_collection_main_card_model.dart';

class TopCollectionCard extends StatelessWidget {
  const TopCollectionCard({
    super.key,
    this.width,
    required this.height,
    required this.ellipseWidth,
    required this.ellipseHeight,
    this.padding,
    this.borderRadius,
    required this.style,
    required this.topCollectionMainCardModel,
  });
  final TopCollectionMainCardModel topCollectionMainCardModel;

  final double ellipseWidth;
  final double ellipseHeight;
  final double? width;
  final double height;
  final EdgeInsets? padding;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(0),
      child: Container(
        width: width?.w,
        height: height.h,
        decoration: const ShapeDecoration(
          color: AppColor.featuredcardBackgroundColor,
          shape: RoundedRectangleBorder(),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 23.0, top: 22.0),
              child: Column(
                children: [
                  Text(
                    topCollectionMainCardModel.name,
                    style: Styles.textStyle12.copyWith(
                      fontFamily: Constants.productSansLight,
                      color: AppColor.coolGray,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    topCollectionMainCardModel.description,
                    style: style,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: padding ?? const EdgeInsets.all(0),
              child: Stack(children: [
                Center(
                  child: Container(
                    width: ellipseWidth.w,
                    height: ellipseHeight.h,
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
                Image.asset(topCollectionMainCardModel.image),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
