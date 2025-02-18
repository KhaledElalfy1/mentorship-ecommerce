import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/styles.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key, required this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(147, 51),
          backgroundColor: AppColor.loginButtonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26.5),
          ),
        ),
        child: Text(
          'LOG IN',
          style: Styles.textStyle16.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
