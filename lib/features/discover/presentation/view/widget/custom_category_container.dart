
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomCategoryContainer extends StatelessWidget {
  const CustomCategoryContainer({
    super.key,
    required this.backgroundColor,
    required this.circleColor,
    required this.category,
    required this.image,
  });
  final int backgroundColor;
  final int circleColor;
  final String category;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Color(backgroundColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            category,
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: Color(circleColor).withOpacity(.5),
                radius: 120 / 2,
                child: CircleAvatar(
                  backgroundColor: Color(circleColor),
                  radius: 100 / 2,
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: Image.asset(
                  image,
                  width: 100.w,
                  height: 100.h,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
