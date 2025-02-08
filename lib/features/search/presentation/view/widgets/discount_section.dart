
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
        FilterChip(
          color: const WidgetStatePropertyAll(Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
              color: AppColor.gunmetalGray,
            ),
          ),
          selected: false,
          selectedColor: AppColor.gunmetalGray,
          onDeleted: () {},
          deleteIcon: const Icon(
            Icons.close,
            color: AppColor.gunmetalGray,
          ),
          label: const Text('10% off'),
          onSelected: (bool value) {},
        ),
        SizedBox(
          width: 10.w,
        ),
        FilterChip(
          color: const WidgetStatePropertyAll(Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
              color: AppColor.gunmetalGray,
            ),
          ),
          selected: false,
          selectedColor: AppColor.gunmetalGray,
          onDeleted: () {},
          deleteIcon: const Icon(
            Icons.close,
            color: AppColor.gunmetalGray,
          ),
          label: const Text('20% off'),
          onSelected: (bool value) {},
        ),
        SizedBox(
          width: 10.w,
        ),
        FilterChip(
          color: const WidgetStatePropertyAll(Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
              color: AppColor.gunmetalGray,
            ),
          ),
          selected: false,
          selectedColor: AppColor.gunmetalGray,
          onDeleted: () {},
          deleteIcon: const Icon(
            Icons.close,
            color: AppColor.gunmetalGray,
          ),
          label: const Text('30% off'),
          onSelected: (bool value) {},
        ),
      ],
    );
  }
}
