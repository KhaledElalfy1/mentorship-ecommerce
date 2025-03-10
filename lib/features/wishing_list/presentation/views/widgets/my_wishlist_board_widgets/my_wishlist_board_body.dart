import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../custom_wishlist_appbar.dart';
import 'my_wishlist_board_category_widget.dart';

class MyWishlistBoardBody extends StatelessWidget {
  const MyWishlistBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://i.pinimg.com/736x/50/fb/4a/50fb4a08d300e5e6de76efb622644ddc.jpg",
      "https://i.pinimg.com/736x/62/f1/66/62f16639de4c4f8e9c4d932c19d53e07.jpg",
      "https://i.pinimg.com/736x/cf/67/97/cf6797e637de8cd62ed96148f171499c.jpg",
      "https://i.pinimg.com/736x/b8/64/2b/b8642b15bd5d44ca06e4eafbc6564c30.jpg",
      "https://i.pinimg.com/736x/22/72/42/227242d84b4841d37f6f688e75c0e70c.jpg",
      "https://i.pinimg.com/736x/19/de/14/19de141652b738331bf0580a72214fb0.jpg"
    ];

    return Padding(
      padding:
          EdgeInsets.only(top: 63.h, left: 22.w, right: 22.w, bottom: 15.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomWishlistAppbar(),
            MyWishlistBoardCategoryWidget(
              images: images,
              categoryName: 'Going out outfits',
              numOfProducts: 36,
            ),
            MyWishlistBoardCategoryWidget(
              images: images,
              categoryName: 'Office Fashion',
              numOfProducts: 20,
            ),
            MyWishlistBoardCategoryWidget(
              images: images,
              categoryName: 'Home outfits',
              numOfProducts: 15,
            ),
          ],
        ),
      ),
    );
  }
}
