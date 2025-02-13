import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/utils/widgets/custom_back_button.dart';

class OrderInfoView extends StatelessWidget {
  const OrderInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Order #1514',
          style: Styles.textStyle18,
        ),
        centerTitle: true,
        leading: const CustomBackButton(),
      ),
      body: ListView(
        children: [
          
        ],
      )
    );
  }
}
