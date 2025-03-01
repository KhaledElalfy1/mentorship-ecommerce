import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';

import '../../../../../core/utils/assets.dart';
import '../../../data/models/group_card_model.dart';
import 'group_left_card.dart';
import 'group_right_card.dart';

class CustomGroupCards extends StatelessWidget {
  const CustomGroupCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 31).w,
      child: Row(
        children: [
          const Expanded(
            child: GroupLeftCard(
              groupCardModel: GroupCardModel(
                name: 'T-Shirts',
                description: 'The \nOffice\nLife',
                image: Assets.groupImage1,
              ),
            ),
          ),
          8.addHorizontalSpace,
          const Expanded(
            child: GroupRightCard(
              groupCardModel: GroupCardModel(
                name: 'Dresses',
                description: 'Elegant\nDesign',
                image: Assets.groupImage2,
              ),
            ),
          )
        ],
      ),
    );
  }
}
