
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'order_info_row.dart';


class OrderDetailsContainer extends StatelessWidget {
  const OrderDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
      ),
      child: const Column(
        children: [
          OrderInfoRow(
            title: 'Order number',
            value: '#1514',
          ),
          SizedBox(height: 10),
          OrderInfoRow(
            title: 'Tracking Number',
            value: 'IK987362341',
          ),
          SizedBox(height: 10),
          OrderInfoRow(
            title: 'Delivery address',
            value: 'SBI Building, Software Park',
          ),
        ],
      ),
    );
  }
}
