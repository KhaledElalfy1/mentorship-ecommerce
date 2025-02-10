import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/custom_appbar.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/product_full_carousel.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/product_full_details.dart';

class ProductFullBody extends StatelessWidget {
  const ProductFullBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: 
          Stack(
            alignment: Alignment.topCenter,
            children: [
              ProductFullCarousel(),
              Column(
                children: [
                  CustomAppbar(),
                  ProductFullDetails(),
                ],
              ),
            ],
          ),
        
      ),
    );
  }
}
