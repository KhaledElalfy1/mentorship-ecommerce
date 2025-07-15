import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/core/helper/font_family_helper.dart';
import 'package:mentorship_ecommerce/features/home/domain/entity/product_entity.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 203.w,
      child: Card(
        shadowColor: AppColor.backBtnColor,
        elevation: .4,
        color: AppColor.whiteColor,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
              child: CachedNetworkImage(
                imageUrl: productEntity.image ?? '',
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      colorFilter: const ColorFilter.mode(Colors.red, BlendMode.colorBurn),
                    ),
                  ),
                ),
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            10.addHorizontalSpace,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productEntity.title ?? '',
                  style: Styles.textStyle12.copyWith(
                    fontFamily: FontFamilyHelper.productSansMedium,
                    color: AppColor.gunmetalGray,
                  ),
                ),
                Text(
                  '\$ ${productEntity.price}',
                  style: Styles.textStyle16.copyWith(
                    color: AppColor.gunmetalGray,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
