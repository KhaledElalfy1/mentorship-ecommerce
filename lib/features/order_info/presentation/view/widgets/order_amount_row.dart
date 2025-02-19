import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class OrderAmountRow extends StatelessWidget {
  const OrderAmountRow(
      {super.key, required this.title, this.amount, required this.value});
  final String title;
  final String? amount;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Text(
          amount ?? '',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Text(
          value,
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
