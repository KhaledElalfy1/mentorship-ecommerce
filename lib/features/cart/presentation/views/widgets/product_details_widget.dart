import 'package:mentorship_ecommerce/features/cart/data/product_cart.dart';

import '../../../../../core/routes/routes_exports.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({
    super.key,
    required this.productCartModel,
  });
  final ProductCartModel productCartModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.r),
              bottomLeft: Radius.circular(25.r)),
          child: Image.network(
            productCartModel.productImage,
            height: 99.h,
            width: 97.w,
            fit: BoxFit.cover,
          ),
        ),
        ProductDetails(
          productCartModel: productCartModel,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CheckBoxWidget(),
            ContainerNumberOfProduct(),
          ],
        )
      ],
    );
  }
}
