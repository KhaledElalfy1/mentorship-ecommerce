import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/featured_product_card_info.dart';

class FeaturedProductCard extends StatelessWidget {
  const FeaturedProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 158.h,
      decoration: const ShapeDecoration(
        color: AppColor.featuredcardBackgroundColor,
        shape: RoundedRectangleBorder(),
      ),
      child: const FeaturedProductCardInfo(),
    );
  }
}
