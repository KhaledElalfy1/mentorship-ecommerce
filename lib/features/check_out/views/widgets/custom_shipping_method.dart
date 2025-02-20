import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/spacing.dart';


import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/utils/widgets/font_weight_helper.dart';
import 'custom_align_text.dart';

class CustomShippingMethod extends StatelessWidget {
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
            text: 'Shipping method',
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
            title: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Free ',
                    style: Styles.textStyle14.copyWith(
                        color: AppColor.blackColor,
                        fontWeight: FontWeightHelper.regular),
                  ),
                  WidgetSpan(child: horizontalSpace(10.w)),
                  TextSpan(
                    text: 'Delivery to home',
                    style: Styles.textStyle14.copyWith(
                        color: const Color(0xff737680),
                        fontWeight: FontWeightHelper.regular),
                  ),
                ],
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Text(
                'Delivery from 3 to 7 business days',
                style: Styles.textStyle14.copyWith(
                    color: const Color(0xffA3A5AD),
                    fontWeight: FontWeightHelper.light),
              ),
            ),
          ),
          const Divider(color: Color(0xffF1F2F3), thickness: 2),
        ],
      ),
    );
  }
}

