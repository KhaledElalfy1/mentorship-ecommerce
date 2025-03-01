import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/onboarding/presentation/views/widgets/welcome_widgets/welcome_content_widget.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/assets.dart';


class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
            AppColor.blackColor.withOpacity(.5), BlendMode.hardLight),
        image: const AssetImage(Assets.welcomeBackground),
      )),
      child: Padding(
          padding: EdgeInsets.only(bottom: 100.h),
          child: const WelcomeContentWidget()),
    );
  }
}
