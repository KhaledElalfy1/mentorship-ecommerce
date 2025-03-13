import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';

import '../../../data/models/featured_product_card_model.dart';
import 'collection_header.dart';
import 'featured_card.dart';
import 'featured_products_items.dart';

class FeaturedProductsSection extends StatelessWidget {
  const FeaturedProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CollectionHeader(
          collectionTitle: 'Featured Products',
        ),
        20.addVerticalSpace,
        const FeaturedProductsItems(),
        const SizedBox(
          height: 11,
        ),
        const FeaturedCard(
          featuredProductCardModel: FeaturedProductCardModel(
            name: 'NEW COLLECTION',
            description: 'HANG OUT\n & PARTY',
            image:
                "https://i.pinimg.com/736x/b7/dd/97/b7dd97ea8efaefa0d3ee4235f4a9975f.jpg",
          ),
        ),
      ],
    );
  }
}
