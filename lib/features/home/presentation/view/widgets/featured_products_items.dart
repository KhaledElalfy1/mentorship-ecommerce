import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/featured_product_item.dart';

class FeaturedProductsItems extends StatelessWidget {
  const FeaturedProductsItems({super.key});
  final list = const [
    Assets.productImage1,
    Assets.productImage2,
    Assets.productImage3,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .3,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            list.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: FeaturedProductItem(
                image: list[index],
                title: 'Turtleneck Sweater ',
                price: 39.99,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
