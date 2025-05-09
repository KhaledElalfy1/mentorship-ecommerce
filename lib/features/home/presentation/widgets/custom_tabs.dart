import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:mentorship_ecommerce/features/home/presentation/widgets/custom_tab_bar.dart';
import 'package:mentorship_ecommerce/features/home/presentation/widgets/home_lists.dart';

class CustomTabs extends StatefulWidget {
  const CustomTabs({super.key});
  @override
  State<CustomTabs> createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: listOfTabsIcons.length,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .87,
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
            const SliverToBoxAdapter(
              child: CustomTabBar(),
            ),
          ],
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: tabsScreens.map((page) => SingleChildScrollView(child: page)).toList(),
          ),
        ),
      ),
    );
  }
}
