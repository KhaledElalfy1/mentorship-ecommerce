
import 'package:flutter/material.dart';
import '../../../core/utils/assets.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
       icon: Image.asset(Assets.appleImage),
          onPressed: () {},
        ),
       const  SizedBox(width: 20),
        IconButton(
       icon: Image.asset(Assets.googleImage),
          onPressed: () {},
        ),
       const  SizedBox(width: 20),
        IconButton(
       icon: Image.asset(Assets.facebookImage,),
          onPressed: () {},
        ),
      ],
    );
  }
}




