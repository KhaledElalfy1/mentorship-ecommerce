import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_model.dart';
import 'product_full_carousel.dart';
import 'product_full_details.dart';

class ProductFullBody extends StatelessWidget {
  const ProductFullBody({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          ProductFullCarousel(productModel: productModel),
          ProductFullDetails(
            productModel: productModel,
          ),
        ],
      ),
    );
  }
}

