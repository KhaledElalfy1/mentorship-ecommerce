
import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';


class FilterActionSection extends StatelessWidget {
  const FilterActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Clear',
            style: Styles.textStyle14.copyWith(
              color: AppColor.gunmetalGray,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.gunmetalGray,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Apply',
            style: Styles.textStyle14.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
