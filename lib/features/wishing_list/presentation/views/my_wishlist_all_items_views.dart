import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/wishing_list/presentation/views/widgets/my_wishlist_all_items_widgets/my_wishlist_all_items_body.dart';

class MyWishlistAllItemsView extends StatelessWidget {
  const MyWishlistAllItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWishlistAllItemsBody(),
    );
  }
}