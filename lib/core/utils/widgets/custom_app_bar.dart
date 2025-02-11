import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.title, required this.icon, this.onPressed});
  final String? title;
  final Widget icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 31, top: 28),
      child: Row(
        children: [
          IconButton(onPressed: onPressed, icon: icon),
          SizedBox(
            width: MediaQuery.of(context).size.width / 5,
          ),
          Text(
            title ?? '',
            style: Styles.textStyle20.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
