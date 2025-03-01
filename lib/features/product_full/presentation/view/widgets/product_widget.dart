import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {super.key,
      required this.image,
      required this.productName,
      required this.price});
  final String image;
  final String productName;
  final String price;
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
              image,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            productName,
            style: Styles.textStyle12,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "\$ $price",
            style: Styles.textStyle16,
          )
        ],
      ),
    );
  }
}
