import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';

class CustomAlignText extends StatelessWidget {
  const CustomAlignText({
    super.key,
    required this.text,
    required this.style,
  });
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    //TODO: Convert the align widget into an extension and use it.
      return align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Text(
            text,
            style: style,
          ),
        ),
      );
  }
}
 