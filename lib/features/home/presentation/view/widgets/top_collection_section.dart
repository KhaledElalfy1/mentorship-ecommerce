import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/top_collection_first_card.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/top_collection_second_card.dart';

import 'collection_header.dart';
import 'custom_group_cards.dart';

class TopCollectionSection extends StatelessWidget {
  const TopCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CollectionHeader(
          collectionTitle: 'Top Collection',
        ),
        33.addVerticalSpace,
        const TopCollectionFirstCard(),
        19.addVerticalSpace,
        const TopCollectionSecondCard(),
        16.addVerticalSpace,
        const CustomGroupCards(),
        10.addVerticalSpace,
      ],
    );
  }
}
