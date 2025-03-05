import 'package:mentorship_ecommerce/features/wishing_list/data/product_wishlist.dart';
import 'package:mentorship_ecommerce/features/wishing_list/presentation/views/widgets/my_wishlist_all_items_widgets/product_wish_list_details.dart';
import 'package:mentorship_ecommerce/features/wishing_list/presentation/views/widgets/my_wishlist_all_items_widgets/product_wish_list_image.dart';
import '../../../../../../core/routes/routes_exports.dart';

class ProductWishlistWidget extends StatelessWidget {
  const ProductWishlistWidget({super.key, required this.productWishlist});

  final ProductWishlist productWishlist;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 253.h,
      width: 141.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductWishListImage(productImage: productWishlist.productImage),
          SizedBox(
            height: 5.h,
          ),
          Text(
            productWishlist.productName,
            style: Styles.textStyle12.copyWith(color: AppColor.gunmetalGray),
          ),
          SizedBox(
            height: 2.h,
          ),
          ProductWishListDetails(productWishlist: productWishlist,
            
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              CustomRatingWidget(
                rating: productWishlist.rating,
                size: 12,
              ),
              Text("($num)",
                  style:
                      Styles.textStyle10.copyWith(color: AppColor.gunmetalGray))
            ],
          ),
        ],
      ),
    );
  }
}
