import 'package:flutter/material.dart';
import '../../featured_products_section.dart';
import '../../header_card_info.dart';
import '../../recommended_section.dart';
import '../../top_collection_section.dart';

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
