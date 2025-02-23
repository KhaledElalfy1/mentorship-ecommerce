import 'package:flutter/material.dart';
import '../../../../../core/utils/app_color.dart';

class CustomDiscountWidget extends StatelessWidget {
  const CustomDiscountWidget({
    super.key,
    required this.isSelected,
    required this.discount,
    required this.onSelected,
  });
  final bool isSelected;
  final String discount;
  final Function(bool) onSelected;
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      backgroundColor: AppColor.whiteColor,
      color: const WidgetStatePropertyAll(Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          color: AppColor.gunmetalGray,
        ),
      ),
      selected: isSelected,
      selectedColor: AppColor.gunmetalGray,
      onDeleted: () {},
      deleteIcon: const Icon(
        Icons.close,
        color: AppColor.gunmetalGray,
      ),
      label: Text(discount),
      onSelected: onSelected,
    );
  }
}
