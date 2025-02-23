import 'package:flutter/material.dart';
import 'category_section_navigator.dart';

class CategorySectionListView extends StatelessWidget {
  const CategorySectionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //TODO: Avoid using 'shrink' here. It builds all children at once, bypassing ListView.builder's lazy loading, which can lead to memory leaks with large lists. Use an alternative approach.
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
