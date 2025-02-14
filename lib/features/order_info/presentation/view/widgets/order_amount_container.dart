import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/order_info/presentation/view/widgets/order_amount_row.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderAmountContainer extends StatelessWidget {
  const OrderAmountContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const OrderAmountRow(
              title: 'Maxi Dress', amount: 'x1', value: '\$68.00'),
          SizedBox(height: 10.h),
          const OrderAmountRow(
              title: 'Linen Dress', amount: 'x1', value: '\$52.00'),
          SizedBox(height: 30.h),
          const OrderAmountRow(title: 'Sub Total', value: '\$120.00'),
          SizedBox(height: 10.h),
          const OrderAmountRow(title: 'Shipping', value: '\$0.00'),
          SizedBox(height: 30.h),
          const Divider(
            color: Colors.grey,
            thickness: 1.5,
          ),
          const OrderAmountRow(title: 'Total', value: '\$120.00'),
        ],
      ),
    );
  }
}
