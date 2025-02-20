import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/widgets/custom_back_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/order_tracking/presentation/view/widgets/my_time_line_tile.dart';

class OrderTrackingView extends StatelessWidget {
  const OrderTrackingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const CustomBackButton(),
        title: Text(
          'Track Order',
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0.w),
        child: ListView(
          children: [
            SizedBox(height: 50.h),
            Text.rich(
              TextSpan(
                text: 'Delivered On: ',
                style: Styles.textStyle13.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: '15.05.21',
                    style: Styles.textStyle13.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 16.h),
            Text.rich(
              TextSpan(
                text: 'Tracking Number: ',
                style: Styles.textStyle13.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: ' IK287368838',
                    style: Styles.textStyle13.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 40.h),
            const MyTimeLineTile(
              isPast: false,
              isLast: false,
              process: "Parcel is successfully delivered",
              time: "15 May 10:20",
            ),
            const MyTimeLineTile(
              isPast: true,
              isLast: false,
              process: "Parcel is out for delivery",
              time: "15 May 10:20",
            ),
            const MyTimeLineTile(
              isPast: true,
              isLast: false,
              process: "Parcel is at your doorstep",
              time: "15 May 10:20",
            ),
            const MyTimeLineTile(
              isPast: true,
              isLast: true,
              process: "Parcel is out for delivery",
              time: "15 May 10:20",
            ),
          ],
        ),
      ),
    );
  }
}
