import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';

class ReviewContainer extends StatelessWidget {
  const ReviewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      margin: EdgeInsets.symmetric(horizontal: 24.0.w),
      padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 20.0.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            // TODO: Create or use app strings class

            'Would you like to write anything about this product?',
            style: Styles.textStyle12.copyWith(
              color: const Color(0xff5A5A5A),
              fontWeight: FontWeight.w300,
            ),
          ),
          TextField(
            maxLines: 5,
            maxLength: 50,
            decoration: InputDecoration(
              hintStyle: Styles.textStyle12.copyWith(
                color: const Color(0xff5A5A5A),
                fontWeight: FontWeight.w300,
              ),
              border: InputBorder.none,
            ),
          )
        ],
      ),
    );
  }
}
