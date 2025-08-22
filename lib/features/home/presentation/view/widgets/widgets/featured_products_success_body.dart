
import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/domain/entities/featured_products.dart';

import 'featured_product_item.dart';


class FeaturedProductsSuccessBody extends StatelessWidget {
  const FeaturedProductsSuccessBody({
    super.key, required this.products,
  });
  final List<FeaturedProducts> products;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .3,
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            products.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: FeaturedProductItem(
                featuredProductItemModel: products[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
