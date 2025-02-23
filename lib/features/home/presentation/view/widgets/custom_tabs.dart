import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../data/models/tabs_model.dart';
import 'selected_tab.dart';
import 'tabs/accessories_page.dart';
import 'tabs/beauty_page.dart';
import 'tabs/man_page.dart';
import 'tabs/woman_page/woman_page.dart';
import 'unselected_tab.dart';

class CustomTabs extends StatefulWidget {
  // TODO: Refactor file. Keep classes, functions, and files under 50 lines to improve readability.

  const CustomTabs({super.key});

  @override
  State<CustomTabs> createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs> {
  // TODO: Add the list in a seperated file
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
        height: MediaQuery.of(context).size.height * .83,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverToBoxAdapter(
              child: CustomAppBar(
                title: 'GemStore',
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 44,
              ),
            ),
            SliverToBoxAdapter(
              child: TabBar(
                isScrollable: false,
                indicatorColor: Colors.transparent,
                labelColor: AppColor.selectedTabColor,
                labelStyle: Styles.textStyle10,
                unselectedLabelColor: AppColor.spanishGrayColor,
                tabs: list
                    .map((tab) => tab == list[isSelected]
                        ? SelectedTab(icon: tab.icon, text: tab.text)
                        : UnSelectedTab(icon: tab.icon, text: tab.text))
                    .toList(),
                onTap: (value) => setState(() => isSelected = value),
              ),
            ),
          ],
          body: TabBarView(
            children:
                tabs.map((page) => SingleChildScrollView(child: page)).toList(),
          ),
        ),
      ),
    );
  }
}
