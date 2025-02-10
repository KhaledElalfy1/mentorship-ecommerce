import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/custom_rating_widget.dart';

class RatingWidgetDetails extends StatelessWidget {
  const RatingWidgetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "4.9",
              style: Styles.textStyle40,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              "OUT OF 5",
              style: Styles.textStyle11,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const CustomRatingWidget(
              rating: 5,
              size: 22,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "83 ratings",
              style: Styles.textStyle10,
            )
          ],
        )
      ],
    );
  }

}