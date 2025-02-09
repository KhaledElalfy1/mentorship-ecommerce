import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/product_full_body.dart';

class ProductFullView extends StatefulWidget {
  const ProductFullView({super.key});

  @override
  State<ProductFullView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProductFullView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:AppColor.backgroundColor,
      body: ProductFullBody(),
    );
  }
}