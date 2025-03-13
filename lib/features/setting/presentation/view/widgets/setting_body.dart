import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
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
      child:  Column(
        children: [
          ProfileDetailsWidget(
            icon: Svgs.language,
            text: S.of(context).language,
            isNeededIcon: true,
          ),
          ProfileDetailsWidget(
            icon: Svgs.termsOFUse,
            text:S.of(context).termsOFUse,
            isNeededIcon: true,
          ),
          ProfileDetailsWidget(
            icon: Svgs.about,
            text: S.of(context).privacyPolicy,
            isNeededIcon: true,
          ),
        ],
      ),
    );
  }
}
