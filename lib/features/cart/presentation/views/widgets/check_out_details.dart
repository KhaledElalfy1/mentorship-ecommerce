import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class CheckOutDetails extends StatelessWidget {
  const CheckOutDetails({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1,
              style: Styles.textStyle14,
            ),
            Text(
              text2,
              style: Styles.textStyle14,
            )
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        const Divider(
          color: AppColor.divider2Color,
        )
      ],
    );
  

  }
}