import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
import '../../../../core/widgets/custom_back_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/custom_button.dart';
import 'widgets/review_container.dart';
import 'widgets/stars_section.dart';
import 'widgets/submet_review_dialog.dart';

class OrderRateView extends StatelessWidget {
  const OrderRateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title:  Text(S.of(context).rateProduct),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 40.h),
          const StarsSection(),
          SizedBox(height: 20.h),
          const ReviewContainer(),
          SizedBox(height: 100.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SizedBox(
              height: 50.h,
              child: CustomButton(
                buttonText: S.of(context).submitReview,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) =>const SubmitReviewDialog());
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

