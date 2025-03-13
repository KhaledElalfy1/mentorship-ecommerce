import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_model.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/product_full_details_body.dart';

class ProductFullDetails extends StatefulWidget {
  const ProductFullDetails({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  State<ProductFullDetails> createState() => _ProductFullDetailsState();
}

class _ProductFullDetailsState extends State<ProductFullDetails> {
  @override
  Widget build(BuildContext context) {
    double minHeight = MediaQuery.of(context).size.height - 467.h;
    return Container(
        constraints: BoxConstraints(
          minHeight: minHeight,
        ),
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 440.h),
        padding: EdgeInsets.only(top: 32.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 10,
              spreadRadius: -2,
              offset: const Offset(0, 0),
            ),
          ],
          color: Colors.white,
        ),
        child:  ProductFullDetailsBody(productModel:widget.productModel,));
  }
}