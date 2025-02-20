import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/customer_review_widget.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/rating_widget_details.dart';

class ProductReviewsWidget extends StatefulWidget {
  const ProductReviewsWidget({super.key});

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
              Text(
                "Reviews",
                style: Styles.textStyle16,
              ),
              AnimatedRotation(
                duration: const Duration(milliseconds: 300),
                turns: isExpanded ? 0.5 : 0.0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: AppColor.dividerColor,
          ),
          AnimatedSize(
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
          ),
        ],
      ),
    );
  }
}
