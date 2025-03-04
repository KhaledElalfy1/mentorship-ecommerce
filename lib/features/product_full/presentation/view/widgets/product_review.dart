import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_model.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/customer_review_widget.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/rating_widget_details.dart';

class ProductReview extends StatelessWidget {
  const ProductReview(
      {super.key, required this.isExpanded, required this.productModel});
  final bool isExpanded;
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCirc,
      child: isExpanded
          ? Column(
              children: [
                RatingWidgetDetails(
                  productModel: productModel,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Column(
                  children: productModel.reviews
                      .map((review) => CustomerReviewWidget(
                            reviewModel: review,
                          ))
                      .toList(),
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}
