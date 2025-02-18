import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscountSection extends StatelessWidget {
  const DiscountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        CustomDiscountWidget(
          isSelected: false,
          discount: '10% off',
          onSelected: (p0) {},
        ),
        SizedBox(
          width: 10.w,
        ),
        CustomDiscountWidget(
          isSelected: false,
          discount: '20% off',
          onSelected: (p0) {},
        ),
        SizedBox(
          width: 10.w,
        ),
        CustomDiscountWidget(
          isSelected: false,
          discount: '30% off',
          onSelected: (p0) {},
        ),
      ],
    );
  }
}

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
