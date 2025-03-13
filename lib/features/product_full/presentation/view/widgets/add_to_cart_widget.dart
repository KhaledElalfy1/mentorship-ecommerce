import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/functions/firebase_analytics_log_event.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/utils/app_color.dart';

class AddToCartWidget extends StatelessWidget {
  const AddToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        firebaseAnalyticsLogEvent(
          firebaseAnalyticsEventModel: FirebaseAnalyticsEventModel(
        name: "add_cart",
        parameters: {
          'action': 'Add to Cart',
        },
      ));
        Navigator.pushNamed(context, Routes.cart);
      },
      child: Container(
        height: 77.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r)),
            color: AppColor.buttonColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
            SizedBox(
              width: 15.w,
            ),
            Text(
              "Add To Cart",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
