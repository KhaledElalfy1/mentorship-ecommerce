import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/svgs.dart';
import 'package:mentorship_ecommerce/core/widgets/custom_button.dart';

class SubmitReviewDialog extends StatelessWidget {
  const SubmitReviewDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Svgs.orderDone,
            ),
            const SizedBox(height: 20),
            Text(
              'Thank you for your feedback!',
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColor.containerMyOrderColors,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'We appreciated your feedback.\nWe\'ll use your feedback to improve\n your experience.',
              textAlign: TextAlign.center,
              style: Styles.textStyle14.copyWith(
                color: const Color(
                  0xff6E768A,
                ),
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              buttonText: 'Done',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
