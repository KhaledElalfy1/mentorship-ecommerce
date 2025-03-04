import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_model.dart';

class ProductFullDetailsBody extends StatelessWidget {
  const ProductFullDetailsBody({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            ProductFullDetailsWidget(productModel: productModel),
            SizedBox(height: 5.h),
            const Divider(color: Color(0xffF3F3F6)),
            ProductDescriptionWidget(
              productModel: productModel,
            ),
            SizedBox(height: 15.h),
            ProductReviewsWidget(productModel: productModel),
            SizedBox(height: 15.h),
            SimilarProductWidget(
              productModel: productModel,
            ),
            //  SizedBox(height: 10.h),
          ],
        ),
        const AddToCartWidget()
      ],
    );
  }
}
