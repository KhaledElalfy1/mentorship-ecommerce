import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails(
      {super.key,
      required this.productName,
      required this.productPrice,
      required this.productSize,
      required this.productColor});
  final String productName;
  final String productPrice;
  final String productSize;
  final String productColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productName,
            style: Styles.textStyle13,
          ),
          Text(
            "\$ $productPrice",
            style: Styles.textStyle16,
          ),
          Text(
            "Size: $productSize  |  Color: $productColor",
            style: Styles.textStyle10,
          ),
        ],
      ),
    );
  }
}
