import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/functions/firebase_analytics_log_event.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/widgets/custom_button.dart';
import 'package:mentorship_ecommerce/features/cart/presentation/views/widgets/check_out_details.dart';

class CheckOutContent extends StatelessWidget {
  const CheckOutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              firebaseAnalyticsLogEvent(
                firebaseAnalyticsEventModel: FirebaseAnalyticsEventModel(
                  name: "proceed_to_checkout",
                  parameters: {
                    "product_price": 110, // product price
                  },
                ),
              );
              context.pushNamed(Routes.checkOut);
            },
            buttonText: "Proceed to checkout",
          )
        ],
      );
  }
}