
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
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
      child:  Column(
        children: [
          OrderInfoRow(
            title: S.of(context).orderNumber,
            value: '#1514',
          ),
          const SizedBox(height: 10),
          OrderInfoRow(
            title: S.of(context).trackingNumber,
            value: 'IK987362341',
          ),
          const SizedBox(height: 10),
          OrderInfoRow(
            title: S.of(context).deliveredAddress,
            value: 'SBI Building, Software Park',
          ),
        ],
      ),
    );
  }
}
