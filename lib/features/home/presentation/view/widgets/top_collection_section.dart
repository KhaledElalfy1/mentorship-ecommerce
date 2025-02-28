import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/top_collection_first_card.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/top_collection_second_card.dart';

import 'collection_header.dart';
import 'custom_group_cards.dart';

class TopCollectionSection extends StatelessWidget {
  const TopCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CollectionHeader(
          collectionTitle: 'Top Collection',
        ),
        SizedBox(
          height: 33,
        ),
        TopCollectionFirstCard(),
        SizedBox(
          height: 19,
        ),
        TopCollectionSecondCard(),
        SizedBox(
          height: 16,
        ),
        CustomGroupCards(),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
