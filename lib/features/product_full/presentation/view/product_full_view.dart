import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_model.dart';
import '../../../../core/utils/app_color.dart';
import 'widgets/product_full_body.dart';

class ProductFullView extends StatefulWidget {
  const ProductFullView({super.key});

  @override
  State<ProductFullView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProductFullView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:AppColor.backgroundColor,
      body: ProductFullBody(productModel: products,),
    );
  }
}