import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/utils/widgets/custom_back_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/order_info/presentation/view/widgets/order_action_buttons.dart';
import 'package:mentorship_ecommerce/features/order_info/presentation/view/widgets/order_amount_container.dart';
import 'package:mentorship_ecommerce/features/order_info/presentation/view/widgets/order_details_container.dart';
import 'package:mentorship_ecommerce/features/order_info/presentation/view/widgets/order_state_container.dart';

class OrderInfoView extends StatelessWidget {
  const OrderInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Order #1514',
          style: Styles.textStyle18,
        ),
        centerTitle: true,
        leading: const CustomBackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: ListView(
          children: [
            SizedBox(height: 40.h),
            const OrderStateContainer(),
            SizedBox(height: 20.h),
            const OrderDetailsContainer(),
            SizedBox(height: 40.h),
            const OrderAmountContainer(),
            SizedBox(height: 40.h),
            const OrderActionButtons(),
          ],
        ),
      ),
    );
  }
}
