import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/svgs.dart';

class CustomWishlistAppbar extends StatelessWidget {
  const CustomWishlistAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: SvgPicture.asset(Svgs.menuIcon)),
        Text("My Wishlist",style: Styles.textStyle18.copyWith(color: AppColor.black2),),
        IconButton(onPressed: () {}, icon: SvgPicture.asset(Svgs.bellIcon)),
      ],
    );
  }
}
