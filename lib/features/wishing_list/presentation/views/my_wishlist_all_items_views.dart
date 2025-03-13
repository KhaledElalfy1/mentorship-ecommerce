import 'package:flutter/material.dart';
import 'widgets/my_wishlist_all_items_widgets/my_wishlist_all_items_body.dart';

class MyWishlistAllItemsView extends StatelessWidget {
  const MyWishlistAllItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyWishlistAllItemsBody(),
    );
  }
}