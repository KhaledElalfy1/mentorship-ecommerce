import 'package:flutter/material.dart';

class OrderInfoView extends StatelessWidget {
  const OrderInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Info'),
      ),
      body: const Center(
        child: Text('Order Info'),
      ),
    );
  }
}