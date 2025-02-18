import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/setting/presentation/view/widgets/setting_body.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          const  CustomAppBar(
              title: 'Setting',
            ),
            SizedBox(
              height: 60.h,
            ),
            const SettingBody(),
          ],
        ),
      ),
    );
  }
}
