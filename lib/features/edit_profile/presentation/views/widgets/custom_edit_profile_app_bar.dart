import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_back_button.dart';
import '../../../../../core/helper/font_weight_helper.dart';

class CustomEditProfileAppBar extends StatelessWidget {
  // TODO: Create a global app bar for reuse across the project.

  const CustomEditProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0.w),
      child: AppBar(
        leading: const CustomBackButton(),
        title: Text(
          'Profile Setting',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeightHelper.bold),
        ),
        centerTitle: true,
      ),
    );
  }
}
