import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonText, this.onPressed});
  final String buttonText;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.pressed)) {
            return Colors.teal; // 🔹 عند الضغط
          } else if (states.contains(WidgetState.disabled)) {
            return Colors.grey; // 🔹 عند التعطيل
          }
          return AppColor.buttonColor; // 🔹 اللون الافتراضي
        }),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white, fontSize: 16.sp),
        ),
      ),
    );
  }
}
