import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/data/models/group_card_model.dart';

class GroupRightCard extends StatelessWidget {
  const GroupRightCard({super.key, required this.groupCardModel});
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
            color: AppColor.featuredCardBackgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(groupCardModel.name,
                        style: Styles.textStyle13
                            .copyWith(color: AppColor.coolGray)),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      groupCardModel.description,
                      style: Styles.textStyle18.copyWith(
                        fontFamily: Constants.productSansLight,
                        color: AppColor.gunmetalGray,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Image.asset(groupCardModel.image),
            ],
          ),
        ),
      ),
    );
  }
}
