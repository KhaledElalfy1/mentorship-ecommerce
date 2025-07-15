import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/font_family_helper.dart';
import 'package:mentorship_ecommerce/core/helper/font_weight_helper.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/data/models/top_collection_card_config_model.dart';
import 'package:mentorship_ecommerce/features/home/data/models/top_collection_main_card_model.dart';
import 'package:mentorship_ecommerce/features/home/presentation/widgets/top_collection_card.dart';

class TopCollectionSecondCard extends StatelessWidget {
  const TopCollectionSecondCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 31.0),
      child: TopCollectionCard(
        topCollectionMainCardModel: const TopCollectionMainCardModel(
          name: 'Summer Collection 2021',
          description: 'Most sexy\n& fabulous\ndesign ',
          image: "https://i.pinimg.com/736x/74/10/a2/7410a228cfd8a06233b8b6103ac90b90.jpg",
        ),
        topCollectionCardConfigModel: TopCollectionCardConfigModel(
          height: 209.h,
          ellipseWidth: 111,
          ellipseHeight: 111,
          borderRadius: BorderRadius.circular(16.r),
          style: Styles.textStyle20.copyWith(
            fontFamily: FontFamilyHelper.productSansLight,
            fontWeight: FontWeightHelper.medium,
            color: AppColor.textColor,
          ),
        ),
      ),
    );
  }
}
