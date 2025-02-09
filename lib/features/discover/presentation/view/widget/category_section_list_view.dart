import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/discover/presentation/view/widget/category_section_navigator.dart';

class CategorySectionListView extends StatelessWidget {
  const CategorySectionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return CategorySectionNavigator(
          category: 'Clothing',
          items: '12 items',
          onTap: () {},
        );
      },
    );
  }
}
