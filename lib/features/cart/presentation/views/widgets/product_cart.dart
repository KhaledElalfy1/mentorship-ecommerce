import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';
import 'check_box_widget.dart';

class ProductCart extends StatefulWidget {
  const ProductCart(
      {super.key,
      required this.productImage,
      required this.productName,
      required this.productPrice,
      required this.productSize,
      required this.productColor});

  final String productImage;
  final String productName;
  final String productPrice;
  final String productSize;
  final String productColor;

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 99.h,
      width: 310.w,
      margin: EdgeInsets.only(bottom: 30.h),
      padding: EdgeInsets.only(right: 20.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 0),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                bottomLeft: Radius.circular(25.r)),
            child: Image.network(
              widget.productImage,
              height: 99.h,
              width: 97.w,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productName,
                  style: Styles.textStyle13,
                ),
                Text(
                  "\$ ${widget.productPrice}",
                  style: Styles.textStyle16,
                ),
                Text(
                  "Size: ${widget.productSize}  |  Color: ${widget.productColor}",
                  style: Styles.textStyle10,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CheckBoxWidget(),
              containerNumberOfProduct(),
            ],
          )
        ],
      ),
    );
  }

  Widget containerNumberOfProduct() {
    return Container(
      height: 22.h,
      width: 63.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white,
          border: Border.all(
            color: Colors.black.withOpacity(0.5),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                if (i > 1) {
                  --i;
                }
              });
            },
            child: Icon(
              Icons.remove_rounded,
              size: 15.sp,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Text("$i",
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black.withOpacity(0.5))),
          InkWell(
            onTap: () {
              setState(() {
                ++i;
              });
            },
            child: Icon(
              Icons.add,
              size: 15.sp,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
