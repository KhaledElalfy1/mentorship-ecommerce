import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';
import 'package:mentorship_ecommerce/features/wishing_list/data/product_wishlist.dart';

class ProductWishListDetails extends StatelessWidget {
  const ProductWishListDetails({super.key, required this.productWishlist});
  final ProductWishlist productWishlist;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("\$ ${productWishlist.productPrice}",
            style: Styles.textStyle16.copyWith(color: AppColor.gunmetalGray)),
        SizedBox(
          width: 10.w,
        ),
        productWishlist.hasLowPrice == true
            ? Text("\$ ${productWishlist.productNewPrice}",
                style: Styles.textStyle12.copyWith(
                    color: AppColor.unSelectedTabIconColor,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: AppColor.unSelectedTabIconColor))
            : const SizedBox.shrink()
      ],
    );
  }
}
