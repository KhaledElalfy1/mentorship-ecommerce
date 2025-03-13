import 'package:flutter/material.dart';
import 'widgets/cart_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      backgroundColor: Colors.white,
      body: CartBody(),
    );
  }
}