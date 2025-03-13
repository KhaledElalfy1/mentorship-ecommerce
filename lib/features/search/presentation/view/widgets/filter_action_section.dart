import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/functions/firebase_analytics_log_event.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterActionSection extends StatelessWidget {
  const FilterActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            S.of(context).clear,
            style: Styles.textStyle14.copyWith(
              color: AppColor.gunmetalGray,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(113.w, 40.h),
            backgroundColor: AppColor.gunmetalGray,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: () {
            firebaseAnalyticsLogEvent(
                firebaseAnalyticsEventModel: FirebaseAnalyticsEventModel(
              name: "Filter_click",
              parameters: {
                'action': "User Apply filter",
              },
            ));
          },
          child: Text(
            S.of(context).apply,
            style: Styles.textStyle14.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
