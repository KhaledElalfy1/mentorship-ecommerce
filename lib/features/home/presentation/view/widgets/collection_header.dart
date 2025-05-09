import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/font_family_helper.dart';
import 'package:mentorship_ecommerce/core/helper/font_weight_helper.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class CollectionHeader extends StatelessWidget {
  const CollectionHeader({super.key, required this.collectionTitle});
  final String collectionTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 31).w,
      child: Row(
        textBaseline: TextBaseline.ideographic,
        children: [
          Text(
            collectionTitle,
            style: Styles.textStyle20.copyWith(fontFamily: FontFamilyHelper.productSans, fontWeight: FontWeightHelper.bold),
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Text(
              'Show all',
              style: Styles.textStyle13.copyWith(color: AppColor.spanishGrayColor, fontFamily: FontFamilyHelper.productSansMedium),
            ),
          ),
        ],
      ),
    );
  }
}
