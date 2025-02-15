import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/features/home/data/models/user_info_model.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/drawer_list_view.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/select_mode.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/user_info_list_tile.dart';

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
          SizedBox(
            height: 68.h,
          ),
          const UserInfoListTile(
            userInfoModel: UserInfoModel(image: Assets.avater, title: 'Sunie Pham', email: 'sunieux@gmail.com'),
          ),
          SizedBox(
            height: 93.h,
          ),
          const DrawerListView(),
          SizedBox(
            height: 73.h,
          ),
          const SelectMode(),
        ],
      ),
    );
  }
}
