import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';

import 'collection_header.dart';
import 'recommended_items.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CollectionHeader(collectionTitle: 'Recommended'),
        30.addVerticalSpace,
        const RecommendedItems(),
      ],
    );
  }
}
