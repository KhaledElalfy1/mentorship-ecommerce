import 'package:flutter/material.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_back_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/order_action_buttons.dart';
import 'widgets/order_amount_container.dart';
import 'widgets/order_details_container.dart';
import 'widgets/order_state_container.dart';

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
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
