import 'package:mentorship_ecommerce/features/onboarding/data/onboarding_model.dart';
import '../../../../../../core/routes/routes_exports.dart';

class OnboardingBodyWidget extends StatelessWidget {
  const OnboardingBodyWidget({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          onboardingModel.text1,
          style: Styles.textStyle20.copyWith(color: AppColor.blackColor),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          onboardingModel.text2,
          style: Styles.textStyle14.copyWith(color: AppColor.blackColor),
        ),
        SizedBox(
          height: 30.h,
        ),
        OnboardingImage(
          onboardingModel: onboardingModel,
        ),
        SizedBox(
          height: 70.h,
        ),
        DotsListView(
            dotCount: onboardingModel.dotNum,
            currentIndex2: onboardingModel.currentIndex),
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
    );
  }
}
