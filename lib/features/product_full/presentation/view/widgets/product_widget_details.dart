import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_model.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/similar_product_listview.dart';

class ProductWidgetDetails extends StatefulWidget {
  const ProductWidgetDetails({super.key, required this.isExpanded, required this.productModel});
  final bool isExpanded;
  final ProductModel productModel;
  @override
  State<ProductWidgetDetails> createState() => _ProductWidgetDetailsState();
}

class _ProductWidgetDetailsState extends State<ProductWidgetDetails> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCirc,
      child: widget.isExpanded
          ?  SimilarProductListview(similarProducts: widget.productModel.similarProducts,)
          : const SizedBox.shrink(),
    );
  }
}
