import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/setting_body.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               CustomAppBar(
                title: S.of(context).settings,
              ),
              SizedBox(
                height: 60.h,
              ),
              const SettingBody(),
            ],
          ),
        ),
      ),
    );
  }
}
