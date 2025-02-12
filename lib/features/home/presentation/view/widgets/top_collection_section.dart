import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/data/models/top_collection_main_card_model.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/collection_header.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/custom_group_cards.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/top_collection_card.dart';

class TopCollectionSection extends StatelessWidget {
  const TopCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CollectionHeader(
          collectionTitle: 'Top Collection',
        ),
        const SizedBox(
          height: 33,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 31.0),
          child: TopCollectionCard(
            topCollectionMainCardModel: const TopCollectionMainCardModel(
              name: 'Sale up to 40%',
              description: 'FOR SLIM\n& BEAUTY',
              image: Assets.topCollectionImage1,
            ),
            width: 312.w,
            height: 142.h,
            ellipseHeight: 88,
            ellipseWidth: 88,
            borderRadius: BorderRadius.circular(16.r),
            style: Styles.textStyle20.copyWith(
              fontFamily: Constants.productSansLight,
              color: AppColor.coolGray,
            ),
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 31.0),
          child: TopCollectionCard(
            topCollectionMainCardModel: const TopCollectionMainCardModel(
              name: 'Summer Collection 2021',
              description: 'Most sexy\n& fabulous\ndesign ',
              image: Assets.topCollectionImage2,
            ),
            height: 209.h,
            ellipseWidth: 111,
            ellipseHeight: 111,
            borderRadius: BorderRadius.circular(16.r),
            style: Styles.textStyle20.copyWith(
              fontFamily: Constants.productSansLight,
              color: AppColor.textColor,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomGroupCards(),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
