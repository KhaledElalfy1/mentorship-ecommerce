import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class CustomEditSearchButton extends StatelessWidget {
  const CustomEditSearchButton({super.key, this.onPressed});

  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 84.0.h),
      child: SizedBox(
        height: 48.h,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
              if (states.contains(WidgetState.pressed)) {
                return AppColor.coolGray;
              } else if (states.contains(WidgetState.disabled)) {
                return AppColor.buttonColor;
              }
              return AppColor.buttonColor;
            }),
          ),
          onPressed: onPressed,
          child: Center(
            child: Text(
              'Save change',
              style: Styles.textStyle16.copyWith(color: AppColor.whiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
