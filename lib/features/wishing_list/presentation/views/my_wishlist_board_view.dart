import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/features/wishing_list/presentation/views/widgets/my_wishlist_board_widgets/my_wishlist_board_body.dart';

class MyWishlistBoardView extends StatelessWidget {
  const MyWishlistBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.whiteColor,
      body:MyWishlistBoardBody() ,
    );
  }
}