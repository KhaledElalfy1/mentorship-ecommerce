import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/data/models/group_card_model.dart';

class GroupLeftCard extends StatelessWidget {
  const GroupLeftCard({super.key, required this.groupCardModel});
  final GroupCardModel groupCardModel;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: SizedBox(
        width: 151,
        height: 194,
        child: Container(
          decoration: ShapeDecoration(
            color: AppColor.featuredcardBackgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            children: [
              Image.asset(groupCardModel.image),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(groupCardModel.name, style: Styles.textStyle13),
                  Text(groupCardModel.description,
                      style: Styles.textStyle17.copyWith(
                        fontFamily: Constants.productSansLight,
                        color: AppColor.gunmetalGray,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
