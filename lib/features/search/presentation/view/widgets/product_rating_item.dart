import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductRatingItem extends StatelessWidget {
  const ProductRatingItem({
    super.key,
    required this.index, required this.isSelected,
  });
  final int index;
 final bool isSelected ;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: EdgeInsets.only(right: 10.0.w),
        constraints: BoxConstraints(
          minWidth: 38.w,
          minHeight: 38.h,
        ),
        padding: EdgeInsets.all(10.0.w),
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.gunmetalGray, width: 2),
          color: isSelected ? AppColor.gunmetalGray : Colors.white,
          shape: BoxShape.circle,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
             Icon(
              Icons.star,
              size: 10,
              color: isSelected ? Colors.white : AppColor.gunmetalGray,
            ),
            Text(
              '$index',
              style: Styles.textStyle11.copyWith(
                color: isSelected ? Colors.white : AppColor.gunmetalGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
