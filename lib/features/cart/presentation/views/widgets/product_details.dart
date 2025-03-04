import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/cart/data/product_cart.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.productCartModel,
  });
  final ProductCartModel productCartModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productCartModel.productName,
            style: Styles.textStyle13,
          ),
          Text(
            "\$ ${productCartModel.productPrice}",
            style: Styles.textStyle16,
          ),
          Text(
            "Size: ${productCartModel.productSize}  |  Color: ${productCartModel.productColor}",
            style: Styles.textStyle10,
          ),
        ],
      ),
    );
  }
}
