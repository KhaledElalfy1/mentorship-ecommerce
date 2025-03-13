import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helper/extention.dart';
import '../../../core/routes/routes.dart';
import '../../../core/utils/app_color.dart';
import '../../../core/widgets/font_weight_helper.dart';
import '../../../core/utils/styles.dart';
import 'custom_outline_button.dart';

class MyOrderListView extends StatelessWidget {
  final String status;

  const MyOrderListView({super.key, required this.status});

  static const List<Map<String, dynamic>> orders = [
    {
      "id": 1524,
      "tracking_number": "IK987362341",
      "quantity": 2,
      "subtotal": 110,
      "status": "Delivered",
      "date": "13/05/2021"
    },
    {
      "id": 1679,
      "tracking_number": "IK3873218890",
      "quantity": 2,
      "subtotal": 450,
      "status": "Delivered",
      "date": "12/05/2021"
    },
    {
      "id": 1671,
      "tracking_number": "IK237368881",
      "quantity": 3,
      "subtotal": 400,
      "status": "Delivered",
      "date": "10/05/2021"
    },
    {
      "id": 1524,
      "tracking_number": "IK287368838",
      "quantity": 2,
      "subtotal": 110,
      "status": "Pending",
      "date": "13/05/2021"
    },
    {
      "id": 1524,
      "tracking_number": "IK2873218897",
      "quantity": 3,
      "subtotal": 230,
      "status": "Pending",
      "date": "12/05/2021"
    },
    {
      "id": 1524,
      "tracking_number": "IK237368820",
      "quantity": 5,
      "subtotal": 490,
      "status": "Pending",
      "date": "10/05/2021"
    },
    {
      "id": 1829,
      "tracking_number": "IK287368831",
      "quantity": 3,
      "subtotal": 210,
      "status": "Cancelled",
      "date": "10/05/2021"
    },
    {
      "id": 1824,
      "tracking_number": "IK2882918812",
      "quantity": 3,
      "subtotal": 120,
      "status": "Cancelled",
      "date": "10/05/2021"
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredOrders = orders
        .where((order) =>
            order["status"].toString().toLowerCase() == status.toLowerCase())
        .toList();
    return ListView.builder(
      itemCount: filteredOrders.length,
      itemBuilder: (context, index) {
        final order = filteredOrders[index];
        return Padding(
          padding: const EdgeInsets.only(
            left: 21,
            right: 18,
            bottom: 20,
          ),
          child: GestureDetector(
            onTap: () {
              context.pushNamed(Routes.orderInfo);
            },
            child: Container(
              width: 336.w,
              height: 182.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 16,
                    spreadRadius: 2,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 18.w, top: 18.h, right: 18.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order #${order['id']}",
                            style: Styles.textStyle18.copyWith(
                                fontWeight: FontWeightHelper.semiBold),
                          ),
                          Text(
                            order["date"],
                            style: Styles.textStyle14
                                .copyWith(color: AppColor.lightgrey),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Text.rich(
                        TextSpan(
                          text: "Tracking number: ",
                          style: Styles.textStyle14
                              .copyWith(color: AppColor.lightgrey),
                          children: [
                            TextSpan(
                              text: order['tracking_number'],
                              style: Styles.textStyle14.copyWith(
                                  fontWeight: FontWeightHelper.regular,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: "Quantity: ",
                              style: Styles.textStyle14
                                  .copyWith(color: AppColor.lightgrey),
                              children: [
                                TextSpan(
                                  text: order['quantity'].toString(),
                                  style: Styles.textStyle14.copyWith(
                                      fontWeight: FontWeightHelper.regular,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              text: "Subtotal: ",
                              style: Styles.textStyle14.copyWith(
                                  color: AppColor.lightgrey,
                                  fontWeight: FontWeightHelper.medium),
                              children: [
                                TextSpan(
                                  text: "\$${order['subtotal']}",
                                  style: Styles.textStyle16.copyWith(
                                      fontWeight: FontWeightHelper.semiBold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            order["status"].toUpperCase(),
                            style: Styles.textStyle14.copyWith(
                              fontWeight: FontWeightHelper.medium,
                              color: order["status"].toLowerCase() == "pending"
                                  ? AppColor.textPendingColor
                                  : order["status"].toLowerCase() == "delivered"
                                      ? AppColor.textDeliveredColor
                                      : AppColor.textCanceledColor,
                            ),
                          ),
                          const CustomOutlineButton()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
