import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/appbar_icon_widget.dart';
import '../../../../../product_full/presentation/view/widgets/custom_rating_widget.dart';

class ProductWishlistWidget extends StatelessWidget {
  const ProductWishlistWidget(
      {super.key,
      required this.productImage,
      required this.productName,
      required this.productPrice,
      this.productNewPrice,
      required this.rating,
      required this.num,
      this.hasLowPrice = false});
  final String productImage;
  final String productName;
  final double productPrice;
  final double? productNewPrice;
  final double rating;
  final int num;
  final bool? hasLowPrice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 253.h,
      width: 141.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 186.h,
            width: 141.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(productImage))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.h, right: 10.w),
                  child: AppbarIconWidget(
                      isPadding: false,
                      height: 25,
                      width: 25,
                      size: 15,
                      iconWidget: Icons.favorite,
                      iconColor: AppColor.favoriteIconColor,
                      onTap: () {}),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            productName,
            style: Styles.textStyle12.copyWith(color: AppColor.gunmetalGray),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Text("\$ $productPrice",
                  style: Styles.textStyle16
                      .copyWith(color: AppColor.gunmetalGray)),
              SizedBox(
                width: 10.w,
              ),
              hasLowPrice == true
                  ? Text("\$ $productNewPrice",
                      style: Styles.textStyle12.copyWith(
                          color: AppColor.unSelectedTabIconColor,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: AppColor.unSelectedTabIconColor))
                  : const SizedBox.shrink()
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              CustomRatingWidget(
                rating: rating,
                size: 12,
              ),
              Text("($num)",
                  style:
                      Styles.textStyle10.copyWith(color: AppColor.gunmetalGray))
            ],
          ),
        ],
      ),
    );
  }
}
