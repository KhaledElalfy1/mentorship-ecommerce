
import '../../../core/utils/assets.dart';

class OnBoardingContent{
   final String image;
   final String text1;
   final String text2;

  OnBoardingContent({required this.image, required this.text1, required this.text2});

}
List<OnBoardingContent> content =[
  OnBoardingContent(image: Assets.onboarding1, text1: "Discover something new", text2: "Special new arrivals just for you"),
  OnBoardingContent(image: Assets.onboarding2, text1: "Update trendy outfit", text2: "Favorite brands and hottest trends"),
  OnBoardingContent(image: Assets.onboarding3, text1: "Explore your true style", text2: "Relax and let us bring the style to you"),

];
