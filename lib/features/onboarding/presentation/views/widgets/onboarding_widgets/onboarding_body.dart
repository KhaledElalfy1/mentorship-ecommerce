import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/routes/routes.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';
import '../custom_button_onboarding_widget.dart';
import 'dots_listview.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.dotNum,
      required this.currentIndex});
  final String image;
  final String text1;
  final String text2;
  final int dotNum;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            height: 352.h,
            width: MediaQuery.sizeOf(context).width,
            color: AppColor.blackgrey2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 90.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text1,
                style: Styles.textStyle20.copyWith(color: AppColor.blackColor),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                text2,
                style: Styles.textStyle14.copyWith(color: AppColor.blackColor),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 368.h,
                width: 261.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColor.grey2,
                ),
                child: Image.asset(
                  height: 349.h,
                  width: 217.w,
                  fit: BoxFit.contain,
                  image,
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              DotsListView(dotCount: dotNum, currentIndex2: currentIndex),
              SizedBox(
                height: 40.h,
              ),
              CustomButtonOnboardingWidget(
                  height: 53.h,
                  width: 210.w,
                  buttonText: "Shopping now",
                  onTap: () {
                    Navigator.pushReplacementNamed(context, Routes.login);
                  })
            ],
          ),
        ),
      ],
    );
  }
}
