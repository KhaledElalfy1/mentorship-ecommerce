import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';

class ProductWishListImage extends StatelessWidget {
  const ProductWishListImage({super.key, required this.productImage});
  final String productImage;

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 186.h,
            width: 141.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(productImage))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.h, right: 10.w),
                  child: AppbarIconWidget(
                      isPadding: false,
                      height: 25,
                      width: 25,
                      size: 15,
                      iconWidget: Icons.favorite,
                      iconColor: AppColor.favoriteIconColor,
                      onTap: () {}),
                ),
              ],
            ),
          );
  }
}