import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/wishing_list/presentation/views/widgets/custom_wishlist_appbar.dart';
import 'package:mentorship_ecommerce/features/wishing_list/presentation/views/widgets/my_wishlist_all_items_widgets/products_gridview_widget.dart';

class MyWishlistAllItemsBody extends StatelessWidget {
  const MyWishlistAllItemsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
      padding:  EdgeInsets.only(top: 63.h,left: 32.w,right: 32.w,bottom: 20.h),
        child:const Column(
          children: [
            CustomWishlistAppbar(),
            ProductsGridviewWidget()
          ],
        ),
      ),
    );
  }
}