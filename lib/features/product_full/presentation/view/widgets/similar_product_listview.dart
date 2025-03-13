import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/similar_product_model.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/product_widget.dart';

class SimilarProductListview extends StatelessWidget {
  const SimilarProductListview({super.key, required this.similarProducts});
  final List<SimilarProductModel> similarProducts;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: similarProducts.length, 
        itemBuilder: (BuildContext context, int index) {
          return ProductWidget(similarProductModel: similarProducts[index]);
        },
      ),
    );
  }
}
