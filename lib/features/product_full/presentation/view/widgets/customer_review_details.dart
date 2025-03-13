import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_review_model.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/custom_rating_widget.dart';

class CustomerReviewDetails extends StatelessWidget {
  const CustomerReviewDetails(
      {super.key, required this.reviewModel,
     });
  
   final ReviewModel reviewModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child:
              Image.network(height: 36.h, width: 36.w, fit: BoxFit.fill, reviewModel.reviewerImage),
        ),
        SizedBox(
          width: 15.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              reviewModel.reviewerName,
              style: Styles.textStyle13,
            ),
             CustomRatingWidget(
              rating:reviewModel.rating ,
              size: 13,
            )
          ],
        )
      ],
    );
  }
}
