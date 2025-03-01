import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/similar_product_listview.dart';

class ProductWidgetDetails extends StatefulWidget {
  const ProductWidgetDetails({super.key, required this.isExpanded});
  final bool isExpanded;
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
          ? const SimilarProductListview()
          : const SizedBox.shrink(),
    );
  }
}
