import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';

import '../../../../../core/utils/assets.dart';
import '../../../data/models/user_info_model.dart';
import 'drawer_list_view.dart';
import 'select_mode.dart';
import 'user_info_list_tile.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .8,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32).r),
      ),
      child: Column(
        children: [
          68.addVerticalSpace,
          const UserInfoListTile(
            userInfoModel: UserInfoModel(image: Assets.avater, title: 'Sunie Pham', email: 'sunieux@gmail.com'),
          ),
          93.addVerticalSpace,
          const DrawerListView(),
          73.addVerticalSpace,
          const SelectMode(),
        ],
      ),
    );
  }
}
