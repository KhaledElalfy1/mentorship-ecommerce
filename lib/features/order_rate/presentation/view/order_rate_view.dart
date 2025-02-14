import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/widgets/custom_back_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/order_rate/presentation/view/widgets/review_container.dart';
import 'package:mentorship_ecommerce/features/order_rate/presentation/view/widgets/stars_section.dart';
class OrderRateView extends StatelessWidget {
  const OrderRateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: const Text('Rate Product'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
           SizedBox(height: 40.h),
          const StarsSection(),
          SizedBox(height: 20.h),
          const ReviewContainer(),
        ],
      ),
    );
  }
}
