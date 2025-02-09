import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10.w,
        bottom: 10.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      decoration: BoxDecoration(
        color: AppColor.textFiledFilledColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle16.copyWith(
                color: const Color(
                  0xff6F6D6B,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
