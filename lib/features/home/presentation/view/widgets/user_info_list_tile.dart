import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/data/models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});
 final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: ListTile(
          trailing: SvgPicture.asset(userInfoModel.image),
          title:  FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(userInfoModel.title, style: Styles.textStyle16.copyWith(color: Colors.black),),
          ),
          subtitle:FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(userInfoModel.email, style: Styles.textStyle12.copyWith(color: Colors.black),),
          ),
        ),
      ),
    );
  }
}
