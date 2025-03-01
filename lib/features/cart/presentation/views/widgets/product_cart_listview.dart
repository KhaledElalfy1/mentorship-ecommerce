import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/cart/data/product_cart.dart';


class ProductCartListview extends StatelessWidget {
  const ProductCartListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310.w,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: productCart.length,
          itemBuilder: (BuildContext context, int index) {
            return productCart[index];
          }),
    );
  }
}
