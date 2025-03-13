import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_model.dart';

class ProductFullDetailsWidget extends StatelessWidget {
  const ProductFullDetailsWidget({super.key, required this.productModel});
 final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.w, right: 32.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productModel.productName,
                style: Styles.textStyle18,
              ),
              SizedBox(height: 10.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                   CustomRatingWidget(
                    rating:productModel.productStarRating ,
                    size: 22,
                  ),
                  Text(
                    "(${productModel.productNumOfRating})",
                    style: Styles.textStyle12,
                  ),
                ],
              ),
            ],
          ),
          Text(
            "\$ ${productModel.productPrice}",
            style: Styles.textStyle26,
          ),
        ],
      ),
    );
  }
}