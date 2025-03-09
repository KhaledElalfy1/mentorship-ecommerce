import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/core/widgets/custom_button.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset("assets/svgs/Update.svg"),
         const Text("Update Required"),
         const Text("Please update the app to continue using it."),
        const CustomButton(buttonText: "App Store")



      ],
    );
  }
}
