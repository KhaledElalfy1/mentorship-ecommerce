import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/similar_product_model.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {super.key, required this.similarProductModel,
      });
 final SimilarProductModel similarProductModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w, top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.network(
              height: 192.h,
              width: 126.w,
              similarProductModel.productImage,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            similarProductModel.productName,
            style: Styles.textStyle12,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "\$ ${similarProductModel.productPrice}",
            style: Styles.textStyle16,
          )
        ],
      ),
    );
  }
}
