import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/custom_product_image.dart';

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
