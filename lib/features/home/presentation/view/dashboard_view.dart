import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/functions/firebase_analytics_log_event.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/home_lists.dart';

import '../../../my_order/widgets/bottom_nav_bar.dart';
import '../../../search/presentation/view/widgets/search_drawer.dart';
import 'widgets/home_drawer.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selectedBottomNavIndex = 0;
  Widget? currentPage;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedBottomNavIndex = index;
      firebaseAnalyticsLogEvent(
          firebaseAnalyticsEventModel: FirebaseAnalyticsEventModel(
        name: "buttonNav_click",
        parameters: {
          'action': "User swiped to the next page",
          'current_page':
              "Dashboard Page ${bottomNavigationPages[_selectedBottomNavIndex]}",
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: _selectedBottomNavIndex == 0 ? const HomeDrawer() : null,
      endDrawer: _selectedBottomNavIndex == 1 ? const SearchDrawer() : null,
      body: IndexedStack(
        index: _selectedBottomNavIndex,
        children: bottomNavigationPages,
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedBottomNavIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
