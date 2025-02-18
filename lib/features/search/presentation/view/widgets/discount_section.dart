import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/custom_discount_widget.dart';

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

