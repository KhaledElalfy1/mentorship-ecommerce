import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/features/home/data/models/group_card_model.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/group_left_card.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/group_right_card.dart';

class CustomGroupCards extends StatelessWidget {
  const CustomGroupCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 32, right: 31),
      child: Row(
        children: [
          GroupLeftCard(
            groupCardModel: GroupCardModel(
              name: 'T-Shirts',
              description: 'The \nOffice\nLife',
              image: Assets.groupImage1,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          GroupRightCard(
            groupCardModel: GroupCardModel(
              name: 'Dresses',
              description: 'Elegant\nDesign',
              image: Assets.groupImage2,
            ),
          )
        ],
      ),
    );
  }
}
