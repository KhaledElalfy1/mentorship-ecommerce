import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helpers/extention.dart';
import 'package:mentorship_ecommerce/core/helpers/spacing.dart';
import 'package:mentorship_ecommerce/features/check_out/views/widgets/custom_shipping_button.dart';

import '../../../core/routes/routes.dart';
import '../../../core/utils/assets.dart';
import '../../../core/utils/styles.dart';
import '../../../core/utils/widgets/font_weight_helper.dart';
import '../../cart/presentation/views/widgets/custom_cart_appbar.dart';
import 'widgets/custom_align_text.dart';
import 'widgets/custom_progress_order.dart';

class CheckOutSuccessView extends StatelessWidget {
  CheckOutSuccessView({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Column(
          children: [
            const CustomCartAppbar(title: "Check out"),
            verticalSpace(28.h),
            const CustomProgressOrder(
              color: Colors.black,
            ),
            verticalSpace(43.h),
            CustomAlignText(
              text: 'Order Completed',
              style: Styles.textStyle25
                  .copyWith(fontWeight: FontWeightHelper.medium),
            ),
            verticalSpace(80.h),
            Image.asset(Assets.orderCompleted),
            verticalSpace(55.h),
            Center(
                child: Text(
              'Thank you for your purchase.\nYou can view your order in \' your order \' section',
              style: Styles.textStyle14
                  .copyWith(fontWeight: FontWeightHelper.medium),
              textAlign: TextAlign.center,
            )),
            verticalSpace(108.h),
            CustomShippingButton(
              text: 'Continue Shopping',
              onClicked: () => context.pushNamedAndRemoveUntil(
                Routes.dashboard,
                predicate: (route) => false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
