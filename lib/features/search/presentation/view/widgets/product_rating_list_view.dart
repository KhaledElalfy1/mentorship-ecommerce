import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/product_rating_item.dart';

class ProductRatingListView extends StatefulWidget {
  const ProductRatingListView({super.key});

  @override
  State<ProductRatingListView> createState() => _ProductRatingListViewState();
}

class _ProductRatingListViewState extends State<ProductRatingListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          5,
          (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: ProductRatingItem(
                index: index + 1,
                isSelected: selectedIndex == index,
              ),
            );
          },
        ),
      ),
    );
  }
}
