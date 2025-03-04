import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_model.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_rating_widget.dart';

class RatingWidgetDetails extends StatelessWidget {
  const RatingWidgetDetails({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "${productModel.rating}",
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
            CustomRatingWidget(
              rating: productModel.productStarRating,
              size: 22,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "(${productModel.productNumOfRating})",
              style: Styles.textStyle10,
            )
          ],
        )
      ],
    );
  }
}
