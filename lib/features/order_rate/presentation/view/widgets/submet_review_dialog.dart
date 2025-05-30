import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/svgs.dart';
import '../../../../../core/widgets/custom_button.dart';

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
              S.of(context).thankYouForYourFeedback,
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColor.containerMyOrderColors,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              S.of(context).weAppreciatedYourFeedback,
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
              buttonText:S.of(context).done,
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
