import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(100, 35), // العرض والارتفاع
        side: const BorderSide(color: Colors.black, width: 1), // لون وسمك الحدود
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.5), // تقويس الزوايا
        ),
      ),
      onPressed: () {},
      child: const Text(
        "Details",
        style: TextStyle(fontSize: 14, color: Colors.black), // حجم ولون النص
      ),
    );
  }
}