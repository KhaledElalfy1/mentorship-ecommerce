import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/customer_review_widget.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/rating_widget_details.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({super.key, required this.isExpanded});
  final bool isExpanded;
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCirc,
      child: isExpanded
          ? Column(
              children: [
                const RatingWidgetDetails(),
                SizedBox(
                  height: 10.h,
                ),
                const CustomerReviewWidget(
                    image:
                        "https://static.vecteezy.com/system/resources/previews/014/194/215/original/avatar-icon-human-a-person-s-badge-social-media-profile-symbol-the-symbol-of-a-person-vector.jpg",
                    customerName: "Jennifer Rose",
                    time: "5m ago",
                    review:
                        "I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!"),
                const CustomerReviewWidget(
                    image:
                        "https://static.vecteezy.com/system/resources/previews/014/194/215/original/avatar-icon-human-a-person-s-badge-social-media-profile-symbol-the-symbol-of-a-person-vector.jpg",
                    customerName: "Kelly Rihana",
                    time: "9m ago",
                    review:
                        "I'm very happy with order, It was delivered on and good quality. Recommended!"),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}
