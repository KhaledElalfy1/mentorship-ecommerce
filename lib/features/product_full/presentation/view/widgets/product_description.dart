import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_model.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key, required this.isExpanded, required this.productModel});
  final bool isExpanded;
  final ProductModel productModel;
  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCirc,
      child: widget.isExpanded
          ? SizedBox(
              width: 305.w,
              child: RichText(
                  text: TextSpan(
                      style: Styles.textStyle12.copyWith(color: Colors.black),
                      children: [
                    TextSpan(
                      text:
                          "${widget.productModel.productDescription}\t\t\t",
                      style: Styles.textStyle12,
                    ),
                    TextSpan(
                        text: "Read more",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: const Color(0xff508A7B),
                            fontSize: 12.sp))
                  ])),
            )
          : const SizedBox.shrink(),
    );
  }
}