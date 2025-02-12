import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/featured_products_section.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/header_card_info.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/recommended_section.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/top_collection_section.dart';

class WomanPageBody extends StatelessWidget {
  const WomanPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HeaderCardInfo(),
        SizedBox(
          height: 35,
        ),
        FeaturedProductsSection(),
        SizedBox(
          height: 32,
        ),
        RecommendedSection(),
        SizedBox(
          height: 34,
        ),
        TopCollectionSection(),
      ],
    );
  }
}
