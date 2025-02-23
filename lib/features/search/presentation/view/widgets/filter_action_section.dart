import 'package:flutter/material.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterActionSection extends StatelessWidget {
  const FilterActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Clear',
            style: Styles.textStyle14.copyWith(
              color: AppColor.gunmetalGray,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(113.w, 40.h),
            backgroundColor: AppColor.gunmetalGray,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Apply',
            style: Styles.textStyle14.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
