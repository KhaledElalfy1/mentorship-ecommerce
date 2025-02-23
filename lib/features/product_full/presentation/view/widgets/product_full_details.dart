import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';
import 'add_to_cart_widget.dart';
import 'custom_rating_widget.dart';
import 'product_description_widget.dart';
import 'product_reviews_widget.dart';
import 'similar_product_widget.dart';

class ProductFullDetails extends StatefulWidget {
  const ProductFullDetails({super.key});

  @override
  State<ProductFullDetails> createState() => _ProductFullDetailsState();
}

class _ProductFullDetailsState extends State<ProductFullDetails> {
  @override
  Widget build(BuildContext context) {
    double minHeight = MediaQuery.of(context).size.height - 467.h;
    return Container(
      constraints: BoxConstraints(
        minHeight: minHeight,
      ),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 440.h),
      padding: EdgeInsets.only(top: 32.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
            spreadRadius: -2,
            offset: const Offset(0, 0),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              productDetails(),
              SizedBox(height: 5.h),
              const Divider(color: Color(0xffF3F3F6)),
              const ProductDescriptionWidget(),
              SizedBox(height: 15.h),
              const ProductReviewsWidget(),
              SizedBox(height: 15.h),
              const SimilarProductWidget(),
              //  SizedBox(height: 10.h),
            ],
          ),
          const AddToCartWidget()
        ],
      ),
    );
  }

  Widget productDetails() {
    return Padding(
      padding: EdgeInsets.only(left: 32.w, right: 32.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sportwear Set",
                style: Styles.textStyle18,
              ),
              SizedBox(height: 10.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CustomRatingWidget(
                    rating: 5,
                    size: 22,
                  ),
                  Text(
                    "(83)",
                    style: Styles.textStyle12,
                  ),
                ],
              ),
            ],
          ),
          Text(
            "\$ 80.00",
            style: Styles.textStyle26,
          ),
        ],
      ),
    );
  }
}
