import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../profile/presentation/views/widgets/profile_details_widget.dart';
import '../../../../../core/utils/svgs.dart';
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
            icon: Svgs.language,
            text: 'Language',
            isNeededIcon: true,
          ),
          ProfileDetailsWidget(
            icon: Svgs.termsOFUse,
            text: 'Terms of use',
            isNeededIcon: true,
          ),
          ProfileDetailsWidget(
            icon: Svgs.about,
            text: 'Privacy Policy',
            isNeededIcon: true,
          ),
        ],
      ),
    );
  }
}
