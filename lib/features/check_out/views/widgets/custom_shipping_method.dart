import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/font_weight_helper.dart';
import 'custom_align_text.dart';
import 'delivery_from3to7_widget.dart';
import 'free_delivery_to_home.dart';

class CustomShippingMethod extends StatelessWidget {
  // TODO: Refactor file. Keep classes, functions, and files under 50 lines to improve readability.

  const CustomShippingMethod({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAlignText(
            text: 'Shipping Method',
            style: Styles.textStyle18
                .copyWith(fontWeight: FontWeightHelper.medium),
          ),
          verticalSpace(15.h),
          const Divider(color: Color(0xffF1F2F3), thickness: 2),
          ListTile(
            leading: Radio(
              value: true,
              groupValue: true,
              onChanged: (value) {},
              activeColor: const Color(0xff508A7B),
            ),
            title: const FreeDeliveryToHomeWidget(),
            subtitle: deliveryFrom3to7(),
          ),
          const Divider(color: Color(0xffF1F2F3), thickness: 2),
        ],
      ),
    );
  }
}
