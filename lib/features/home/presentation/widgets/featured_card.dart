import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/features/home/presentation/widgets/featured_card_image_content.dart';
import 'package:mentorship_ecommerce/features/home/presentation/widgets/featured_card_text_content.dart';

import '../../../../core/utils/app_color.dart';
import '../../data/models/featured_product_card_model.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({
    super.key,
    required this.featuredProductCardModel,
  });
  final FeaturedProductCardModel featuredProductCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      decoration: const ShapeDecoration(
        color: AppColor.featuredCardBackgroundColor,
        shape: RoundedRectangleBorder(),
      ),
      child: Row(
        children: [
          FeaturedCardTextContent(
            featuredProductCardModel: featuredProductCardModel,
          ),
          40.addHorizontalSpace,
          FeaturedCardImageContent(featuredProductCardModel: featuredProductCardModel),
        ],
      ),
    );
  }
}
