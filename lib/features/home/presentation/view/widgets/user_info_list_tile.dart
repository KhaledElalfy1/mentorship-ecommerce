import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/utils/widgets/font_weight_helper.dart';
import 'package:mentorship_ecommerce/features/home/data/models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0).w,
        child: ListTile(
          leading: CircleAvatar(
            radius: 32.r,
            backgroundImage: AssetImage(userInfoModel.image),
          ),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              userInfoModel.title,
              style: Styles.textStyle16.copyWith(color: Colors.black),
              maxLines: 1,
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              userInfoModel.email,
              style: Styles.textStyle12.copyWith(
                color: Colors.black,
                fontWeight: FontWeightHelper.medium,
              ),
              maxLines: 1,
            ),
          ),
        ),
      ),
    );
  }
}
