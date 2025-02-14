import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/cart/presentation/views/widgets/checkout_widget.dart';
import 'package:mentorship_ecommerce/features/cart/presentation/views/widgets/custom_cart_appbar.dart';
import 'package:mentorship_ecommerce/features/cart/presentation/views/widgets/product_cart_listview.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
     return const Column(
      children: [
         CustomCartAppbar(
          title: "My Cart",
         ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children:  [
                ProductCartListview(),
              ],
            ),
          ),
        ),
        CheckoutWidget(), 
      ],
    );
  }
}
