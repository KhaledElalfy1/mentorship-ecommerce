import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchTextFormFiled extends StatelessWidget {
  const CustomSearchTextFormFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(20.r),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        decoration: InputDecoration(
          fillColor: AppColor.textFiledFilledColor,
          filled: true,
          hintText: 'Search',
          border: borderStyle(),
          errorBorder: borderStyle(),
          focusedBorder: borderStyle(),
          focusedErrorBorder: borderStyle(),
          enabledBorder: borderStyle(),
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }

  OutlineInputBorder borderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.r),
      borderSide: BorderSide.none,
    );
  }
}
