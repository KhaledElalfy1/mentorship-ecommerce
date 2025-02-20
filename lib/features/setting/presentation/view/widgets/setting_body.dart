import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/profile/presentation/views/widgets/profile_details_widget.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
      child: const Column(
        children: [
          ProfileDetailsWidget(
            icon: Assets.language,
            text: 'Language',
            isNeededIcon: true,
          ),
          ProfileDetailsWidget(
            icon: Assets.termsOFUse,
            text: 'Terms of use',
            isNeededIcon: true,
          ),
          ProfileDetailsWidget(
            icon: Assets.about,
            text: 'Privacy Policy',
            isNeededIcon: true,
          ),
        ],
      ),
    );
  }
}
