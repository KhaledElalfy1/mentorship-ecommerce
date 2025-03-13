import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_review_model.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/customer_review_details.dart';
import '../../../../../core/utils/styles.dart';

class CustomerReviewWidget extends StatelessWidget {
  const CustomerReviewWidget({
    super.key,
    required this.reviewModel,
  });
  final ReviewModel reviewModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomerReviewDetails(
              reviewModel:reviewModel,
            ),
            Text(
              " ${reviewModel.timeAgo}m ago",
              style: Styles.textStyle11,
            )
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        SizedBox(
            width: 313.w,
            child: Text(
              reviewModel.review,
              style: Styles.textStyle11,
            )),
        SizedBox(
          height: 25.h,
        )
      ],
    );
  }
}
