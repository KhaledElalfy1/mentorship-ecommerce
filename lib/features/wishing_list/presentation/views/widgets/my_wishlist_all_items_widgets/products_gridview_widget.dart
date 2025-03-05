import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/wishing_list/data/product_wishlist.dart';
import 'package:mentorship_ecommerce/features/wishing_list/presentation/views/widgets/my_wishlist_all_items_widgets/product_wishlist_widget.dart';

class ProductsGridviewWidget extends StatelessWidget {
  const ProductsGridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 30.w,
        mainAxisSpacing: 10.h,
        childAspectRatio: 0.554,
      ),
      itemCount: productWidget.length,
      itemBuilder: (context, index) {
        return ProductWishlistWidget(productWishlist: productWidget[index]);
      },
    );
  }
}
