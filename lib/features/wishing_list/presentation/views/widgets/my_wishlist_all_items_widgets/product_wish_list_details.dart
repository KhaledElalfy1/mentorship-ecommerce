import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';

class ProductWishListDetails extends StatelessWidget {
  const ProductWishListDetails(
      {super.key,
      required this.productPrice,
      this.productNewPrice,
      this.hasLowPrice});
  final double productPrice;
  final double? productNewPrice;
  final bool? hasLowPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("\$ $productPrice",
            style: Styles.textStyle16.copyWith(color: AppColor.gunmetalGray)),
        SizedBox(
          width: 10.w,
        ),
        hasLowPrice == true
            ? Text("\$ $productNewPrice",
                style: Styles.textStyle12.copyWith(
                    color: AppColor.unSelectedTabIconColor,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: AppColor.unSelectedTabIconColor))
            : const SizedBox.shrink()
      ],
    );
  }
}
