import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/data/models/featured_product_item_model.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/home_lists.dart';

import 'featured_product_item.dart';

class FeaturedProductsItems extends StatelessWidget {
  const FeaturedProductsItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .3,
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            featuredProductlist.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: FeaturedProductItem(
                featuredProductItemModel: FeaturedProductItemModel(
                  imageUrl: featuredProductlist[index],
                  title: 'Turtleneck Sweater ',
                  price: 39.99,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
