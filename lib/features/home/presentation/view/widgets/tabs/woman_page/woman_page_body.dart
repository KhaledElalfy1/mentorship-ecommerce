import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';

import '../../featured_products_section.dart';
import '../../header_card_info.dart';
import '../../recommended_section.dart';
import '../../top_collection_section.dart';

class WomanPageBody extends StatelessWidget {
  const WomanPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const HeaderCardInfo(),
        35.addVerticalSpace,
        const FeaturedProductsSection(),
        32.addVerticalSpace,
        const RecommendedSection(),
        34.addVerticalSpace,
        const TopCollectionSection(),
      ],
    );
  }
}
