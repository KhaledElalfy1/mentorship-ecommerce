import 'package:flutter/material.dart';
import 'collection_header.dart';
import 'recommended_items.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CollectionHeader(collectionTitle: 'Recommended'),
        SizedBox(
          height: 30,
        ),
        RecommendedItems(),
      ],
    );
  }
}
