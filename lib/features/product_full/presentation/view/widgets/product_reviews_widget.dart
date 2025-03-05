import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_model.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/product_review.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class ProductReviewsWidget extends StatefulWidget {
  const ProductReviewsWidget({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  State<ProductReviewsWidget> createState() => _ProductReviewsWidgetState();
}

class _ProductReviewsWidgetState extends State<ProductReviewsWidget> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: EdgeInsets.only(left: 32.w, right: 32.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Reviews", style: Styles.textStyle16),
              AnimatedRotation(
                duration: const Duration(milliseconds: 300),
                turns: isExpanded ? 0.5 : 0.0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: const Icon(Icons.keyboard_arrow_down),
                ),
              ),
            ],
          ),
          const Divider(
            color: AppColor.dividerColor,
          ),
          ProductReview(
              isExpanded: isExpanded,  productModel: widget.productModel,)
        ],
      ),
    );
  }
}
