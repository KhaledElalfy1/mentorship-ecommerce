import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/functions/firebase_analytics_log_event.dart';
import 'package:mentorship_ecommerce/core/helper/font_family_helper.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';
import 'package:mentorship_ecommerce/core/widgets/custom_image.dart';
import 'package:mentorship_ecommerce/features/home/domain/entities/featured_products.dart';

import '../../../../../../core/helper/extention.dart';
import '../../../../../../core/routes/routes.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class FeaturedProductItem extends StatelessWidget {
  const FeaturedProductItem({
    super.key,
    required this.featuredProductItemModel,
  });
  final FeaturedProducts featuredProductItemModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        firebaseAnalyticsLogEvent(
            firebaseAnalyticsEventModel: FirebaseAnalyticsEventModel(
          name: "product_full_page",
          parameters: {
            'action': "User clicked on product item",
            'product_name': featuredProductItemModel.title,
          },
        ));
        context.pushNamed(Routes.productFull);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomProductImage(
            imageUrl: featuredProductItemModel.images[0],
          ),
          14.addVerticalSpace,
          Text(
            featuredProductItemModel.title.substring(0, 20),
            style: Styles.textStyle12.copyWith(
              fontFamily: FontFamilyHelper.productSansMedium,
            ),
          ),
          Text(
            '\$ ${featuredProductItemModel.price}',
            style: Styles.textStyle16.copyWith(
              color: AppColor.gunmetalGray,
            ),
          ),
        ],
      ),
    );
  }
}
