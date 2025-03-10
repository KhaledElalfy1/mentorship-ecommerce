import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/update/presentation/view/widgets/custom_button.dart';


class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          SvgPicture.asset("assets/svgs/Update.svg"),
           Text("Update Required",style:Styles.textStyle24 ,),
          const SizedBox(height: 10,),
            Text("Please update the app to continue using it.",style: Styles.textStyle30,),
            const SizedBox(height: 20,),
           Platform.isIOS?    CustomButton(label: "App Store"):
      
       
           CustomButton(label: "Google Play")
      
      
      
        ],
      ),
    );
  }
}
