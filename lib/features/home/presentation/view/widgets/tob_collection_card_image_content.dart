import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/features/home/data/models/top_collection_card_config_model.dart';
import 'package:mentorship_ecommerce/features/home/data/models/top_collection_main_card_model.dart';

class TobCollectionCardImageContent extends StatelessWidget {
  const TobCollectionCardImageContent({
    super.key,
    required this.topCollectionMainCardModel,
    required this.topCollectionCardConfigModel,
  });
  final TopCollectionMainCardModel topCollectionMainCardModel;
  final TopCollectionCardConfigModel topCollectionCardConfigModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: topCollectionCardConfigModel.padding ?? const EdgeInsets.all(0),
      child: Stack(children: [
        Center(
          child: Container(
            width: topCollectionCardConfigModel.ellipseWidth.w,
            height: topCollectionCardConfigModel.ellipseHeight.h,
            decoration: const ShapeDecoration(
              gradient: RadialGradient(
                colors: [
                  AppColor.productBackgroundColor,
                  AppColor.gradientColor1
                ],
                stops: [
                  0.6,
                  1,
                ],
              ),
              shape: OvalBorder(),
            ),
          ),
        ),
        Image.asset(topCollectionMainCardModel.image),
      ]),
    );
  }
}
