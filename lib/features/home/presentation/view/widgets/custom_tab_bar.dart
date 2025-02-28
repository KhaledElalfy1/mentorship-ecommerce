import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/home_lists.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/selected_tab.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/unselected_tab.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: false,
      indicatorColor: Colors.transparent,
      labelColor: AppColor.selectedTabColor,
      labelStyle: Styles.textStyle10,
      unselectedLabelColor: AppColor.spanishGrayColor,
      tabs: listOfTabsIcons
          .map(
            (tab) => tab == listOfTabsIcons[isSelected]
                ? SelectedTab(
                    icon: tab.icon,
                    text: tab.text,
                  )
                : UnSelectedTab(
                    icon: tab.icon,
                    text: tab.text,
                  ),
          )
          .toList(),
      onTap: (value) => setState(() => isSelected = value),
    );
  }
}
