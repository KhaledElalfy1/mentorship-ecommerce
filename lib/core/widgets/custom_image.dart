import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_color.dart';

class CustomProductImage extends StatelessWidget {
  const CustomProductImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        width: 126.w,
        height: 178.h,
        color: AppColor.productBackgroundColor,
        child: Image.asset(imageUrl),
      ),
    );
  }
}
