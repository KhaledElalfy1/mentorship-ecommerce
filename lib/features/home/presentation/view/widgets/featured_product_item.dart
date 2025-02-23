import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/helper/extention.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_product_image.dart';

class FeaturedProductItem extends StatelessWidget {
  const FeaturedProductItem(
      {super.key,
      required this.image,
      required this.title,
      required this.price});
  final String image;
  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.productFull);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomProductImage(
            imageUrl: image,
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            title,
            style: Styles.textStyle12.copyWith(
              fontFamily: Constants.productSansMedium,
            ),
          ),
          Text('\$ $price',
              style: Styles.textStyle16.copyWith(color: AppColor.gunmetalGray)),
        ],
      ),
    );
  }
}
