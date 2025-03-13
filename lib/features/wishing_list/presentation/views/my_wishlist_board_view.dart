import 'package:flutter/material.dart';
import '../../../../core/utils/app_color.dart';
import 'widgets/my_wishlist_board_widgets/my_wishlist_board_body.dart';

class MyWishlistBoardView extends StatelessWidget {
  const MyWishlistBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: AppColor.whiteColor,
      body:MyWishlistBoardBody() ,
    );
  }
}