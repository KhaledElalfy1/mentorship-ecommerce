import 'package:flutter/material.dart';
import '../utils/app_color.dart';
import '../utils/styles.dart';
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
            return AppColor.grey; // 🔹 عند التعطيل
          }
          return AppColor.buttonColor; // 🔹 اللون الافتراضي
        }),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          buttonText,
          //TODO: Try using the Styles class
          style: Styles.textStyle16.copyWith(color: AppColor.whiteColor),
        ),
      ),
    );
  }
}
