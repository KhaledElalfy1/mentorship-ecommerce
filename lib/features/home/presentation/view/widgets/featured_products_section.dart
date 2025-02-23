import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import '../../../data/models/featured_product_card_model.dart';
import 'collection_header.dart';
import 'featured_card.dart';
import 'featured_products_items.dart';

class FeaturedProductsSection extends StatelessWidget {
  const FeaturedProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CollectionHeader(
          collectionTitle: 'Featured Products',
        ),
        SizedBox(
          height: 20,
        ),
        FeaturedProductsItems(),
        SizedBox(
          height: 11,
        ),
        FeaturedCard(
          featuredProductCardModel: FeaturedProductCardModel(
            name: 'NEW COLLECTION',
            description: 'HANG OUT\n & PARTY',
            image: Assets.featuredCardImage,
          ),
        ),
      ],
    );
  }
}
