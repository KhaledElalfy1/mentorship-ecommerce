import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/collection_header.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/featured_product_card.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/featured_products_items.dart';

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
        FeaturedProductCard(),
      ],
    );
  }
}
