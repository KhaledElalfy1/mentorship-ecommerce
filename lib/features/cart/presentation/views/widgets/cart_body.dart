import 'package:flutter/material.dart';
import 'checkout_widget.dart';
import 'custom_cart_appbar.dart';
import 'product_cart_listview.dart';

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
              children: [
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
