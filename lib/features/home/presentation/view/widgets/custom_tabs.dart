import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/data/models/tabs_model.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/selected_tab.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/accessories_page.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/beauty_page.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/man_page.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/woman_page/woman_page.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/unselected_tab.dart';

class CustomTabs extends StatefulWidget {
  const CustomTabs({super.key});

  @override
  State<CustomTabs> createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs> {
  final list = const [
    TabsModel(icon: Icons.female, text: 'woman'),
    TabsModel(icon: Icons.male, text: 'man'),
    TabsModel(icon: FontAwesomeIcons.glasses, text: 'Accessories'),
    TabsModel(icon: FontAwesomeIcons.screwdriver, text: 'Beauty'),
  ];
  final tabs = const <Widget>[
    WomanPage(),
    ManPage(),
    AccessoriesPage(),
    BeautyPage(),
  ];

  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: list.length,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TabBar(
              indicatorColor: Colors.transparent,
              labelColor: AppColor.selectedTabColor,
              labelStyle: Styles.textStyle10,
              unselectedLabelColor: AppColor.spanishGrayColor,
              tabs: list.map((tab) => tab == list[isSelected] ? SelectedTab(icon: tab.icon, text: tab.text) : UnSelectedTab(icon: tab.icon, text: tab.text)).toList(),
              onTap: (value) => setState(() => isSelected = value),
            ),
            Expanded(
              child: TabBarView(
                children: tabs.map((page) => page).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
