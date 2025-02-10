import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/featured_products_section.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/header_card_info.dart';

class WomanPageBody extends StatelessWidget {
  const WomanPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HeaderCardInfo(),
            SizedBox(
              height: 35,
            ),
            FeaturedProductsSection(),
          ],
        ),
      ),
    );
  }
}
