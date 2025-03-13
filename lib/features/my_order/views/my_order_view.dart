import 'package:flutter/material.dart';

import 'my_order_view_body.dart';

class MyOrderView extends StatelessWidget {
  const MyOrderView({super.key, });

  @override
  Widget build(BuildContext context) {
    return const  SafeArea(
      child: Scaffold(
        body: MyOrderViewBody(),
      ),
    );
  }
}