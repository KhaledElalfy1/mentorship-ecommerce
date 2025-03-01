import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class SearchDrawerWidgetsSection extends StatelessWidget {
  const SearchDrawerWidgetsSection(
      {super.key, required this.text, required this.widget});
  final String text;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Styles.textStyle14,
        ),
        SizedBox(
          height: 20.h,
        ),
        widget,
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
