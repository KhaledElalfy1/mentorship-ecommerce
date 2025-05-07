import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';

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
                image: "https://i.pinimg.com/736x/74/10/a2/7410a228cfd8a06233b8b6103ac90b90.jpg",
              ),
            ),
          ),
          8.addHorizontalSpace,
          const Expanded(
            child: GroupRightCard(
              groupCardModel: GroupCardModel(
                name: 'Dresses',
                description: 'Elegant\nDesign',
                image: "https://i.pinimg.com/736x/74/10/a2/7410a228cfd8a06233b8b6103ac90b90.jpg",
              ),
            ),
          )
        ],
      ),
    );
  }
}
