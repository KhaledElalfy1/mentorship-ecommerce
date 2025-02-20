import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/utils/widgets/custom_button.dart';
import 'package:mentorship_ecommerce/features/cart/presentation/views/widgets/check_out_details.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310.h,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.r),
          topRight: Radius.circular(15.r),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            spreadRadius: 0,
            offset: const Offset(0, -1),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CheckOutDetails(text1: "Product price", text2: "\$110"),
          SizedBox(
            height: 15.h,
          ),
          const CheckOutDetails(text1: "Shipping", text2: "Freeship"),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subtotal",
                style: Styles.textStyle14,
              ),
              Text(
                "\$110",
                style: Styles.textStyle20,
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomButton(
            onPressed: () {
              context.pushNamed(Routes.checkOut);
            },
            buttonText: "Proceed to checkout",
          )
        ],
      ),
    );
  }
}
