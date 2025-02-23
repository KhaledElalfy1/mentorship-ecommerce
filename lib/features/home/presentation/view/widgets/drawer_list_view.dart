import 'package:flutter/material.dart';
import '../../../data/models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  final list = const [
    DrawerItemModel(icon: Icons.settings, title: 'Setting'),
    DrawerItemModel(icon: Icons.mail_outline, title: 'Support'),
    DrawerItemModel(icon: Icons.info_outline, title: 'About us'),
  ];
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() => activeIndex = index);
            }
          },
          child: DrawerItem(
            drawerItemModel: list[index],
            isActive: activeIndex == index,
          )),
    );
  }
}
