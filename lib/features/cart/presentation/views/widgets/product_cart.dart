import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/cart/presentation/views/widgets/product_details_widget.dart';

class ProductCart extends StatefulWidget {
  const ProductCart(
      {super.key,
      required this.productImage,
      required this.productName,
      required this.productPrice,
      required this.productSize,
      required this.productColor});
  final String productImage;
  final String productName;
  final String productPrice;
  final String productSize;
  final String productColor;

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 99.h,
        width: 310.w,
        margin: EdgeInsets.only(bottom: 30.h),
        padding: EdgeInsets.only(right: 20.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 0),
              )
            ]),
        child: ProductDetailsWidget(
            productImage: widget.productImage,
            productName: widget.productName,
            productPrice: widget.productPrice,
            productSize: widget.productSize,
            productColor: widget.productColor));
  }
}
