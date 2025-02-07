import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/custom_rating_widget.dart';

class CustomerReviewWidget extends StatelessWidget {
  const CustomerReviewWidget({super.key, required this.customerName, required this.image, required this.time, required this.review});
final String customerName;
final String image;
final String time;
final String review;
  @override
  Widget build(BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.network(
                      height: 36.h, width: 36.w, fit: BoxFit.fill, image),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      customerName,
                      style: Styles.textStyle13,
                    ),
                   const CustomRatingWidget(
                      rating: 5,
                      size: 13,
                    )
                  ],
                )
              ],
            ),
            Text(
              time,
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
              review,
              style: Styles.textStyle11,
            )),
            SizedBox(height: 25.h,)
      ],
    );
  }

  }
