import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/widgets/custom_image.dart';
import 'package:mentorship_ecommerce/features/home/data/models/featured_product_item_model.dart';

import '../../../../../constants.dart';
import '../../../../../core/helper/extention.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class FeaturedProductItem extends StatelessWidget {
  const FeaturedProductItem({
    super.key,
    required this.featuredProductItemModel,
  });
  final FeaturedProductItemModel featuredProductItemModel;
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
            imageUrl: featuredProductItemModel.imageUrl,
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            featuredProductItemModel.title,
            style: Styles.textStyle12.copyWith(
              fontFamily: Constants.productSansMedium,
            ),
          ),
          Text('\$ ${featuredProductItemModel.price}', style: Styles.textStyle16.copyWith(color: AppColor.gunmetalGray)),
        ],
      ),
    );
  }
}
