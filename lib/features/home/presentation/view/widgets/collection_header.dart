import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class CollectionHeader extends StatelessWidget {
  const CollectionHeader({super.key, required this.collectionTitle});
  final String collectionTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 31),
      child: Row(
        textBaseline: TextBaseline.ideographic,
        children: [
          Text(
            collectionTitle,
            style: Styles.textStyle20,
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 4.5,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'Show all',
              style: Styles.textStyle13.copyWith(color: AppColor.spanishGrayColor, fontFamily: Constants.productSansMedium),
            ),
          ),
        ],
      ),
    );
  }
}
