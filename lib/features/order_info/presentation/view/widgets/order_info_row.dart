import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class OrderInfoRow extends StatelessWidget {
  const OrderInfoRow({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.textStyle16.copyWith(
              color: const Color(0xff7B7C82), fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        Expanded(
          child: Text(
            value,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle12.copyWith(
                color: const Color(0xff23262F), fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
