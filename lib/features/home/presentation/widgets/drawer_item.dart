import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/styles.dart';
import '../../data/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: isActive ? AppColor.activeColor : AppColor.whiteColor,
      child: ListTile(
        leading: Icon(
          drawerItemModel.icon,
          size: 19.w,
        ),
        title: Text(
          drawerItemModel.title,
          style: Styles.textStyle16.copyWith(color: AppColor.coolGray),
        ),
      ),
    );
  }
}
