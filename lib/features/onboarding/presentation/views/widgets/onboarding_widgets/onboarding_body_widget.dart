import '../../../../../../core/routes/routes_exports.dart';

class OnboardingBodyWidget extends StatelessWidget {
  const OnboardingBodyWidget(
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
    return Column(
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
        OnboardingImage(
          image: image,
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
    );
  }
}
