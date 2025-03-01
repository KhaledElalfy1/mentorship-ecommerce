import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/features/discover/data/models/category_model.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';

import 'category_section_navigator.dart';

class CategorySectionListView extends StatelessWidget {
  const CategorySectionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5 * 50,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return CategorySectionNavigator(
            category: CategoryModel(
              category:S.of(context).clothing,
              numberOfItems: '5',
              backgroundColor: 0xffA3A798,
              circleColor: 0xffC2C7B5,
              image: Assets.clothing,
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}
