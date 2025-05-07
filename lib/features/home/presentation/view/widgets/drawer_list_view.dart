import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/home_lists.dart';

import 'drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: drawerItemsList.length,
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() => activeIndex = index);
            }
            if (activeIndex == 0) {
              Navigator.pushNamed(context, Routes.setting);
            }
          },
          child: DrawerItem(
            drawerItemModel: drawerItemsList[index],
            isActive: activeIndex == index,
          )),
    );
  }
}
