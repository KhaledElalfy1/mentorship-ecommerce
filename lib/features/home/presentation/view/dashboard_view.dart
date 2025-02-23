import 'package:flutter/material.dart';
import 'home_view.dart';
import 'widgets/home_drawer.dart';
import '../../../my_order/views/my_order_view.dart';
import '../../../my_order/widgets/bottom_nav_bar.dart';
import '../../../profile/presentation/views/profile_view.dart';
import '../../../search/presentation/view/search_view.dart';
import '../../../search/presentation/view/widgets/search_drawer.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selectedBottomNavIndex = 0;
  Widget? currentPage;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _pages = const [
    HomeView(),
    SearchView(),
    MyOrderView(),
    ProfileView(),
  ];
  

  void _onItemTapped(int index) {
    setState(() {
      _selectedBottomNavIndex = index;
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
        children: _pages,
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedBottomNavIndex,
        onItemTapped:_onItemTapped,
      ),
    );
  }
}

