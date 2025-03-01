import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/customer_review_details.dart';
import '../../../../../core/utils/styles.dart';

class CustomerReviewWidget extends StatelessWidget {
  const CustomerReviewWidget(
      {super.key,
      required this.customerName,
      required this.image,
      required this.time,
      required this.review});
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
            CustomerReviewDetails(
                customerName: customerName, image: image, time: time),
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
        SizedBox(
          height: 25.h,
        )
      ],
    );
  }
}
