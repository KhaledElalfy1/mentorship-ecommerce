import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/home_view.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/home_drawer.dart';
import 'package:mentorship_ecommerce/features/my_order/views/my_order_view.dart';
import 'package:mentorship_ecommerce/features/my_order/widgets/bottom_nav_bar.dart';
import 'package:mentorship_ecommerce/features/profile/presentation/views/profile_view.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/search_view.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/search_drawer.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selectedIndex = 0;
  int _selectedBottomNavIndex = 0;
  Widget? currentPage;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _pages = const [
    HomeView(),
    SearchView(),
    MyOrderView(),
    ProfileView(),
  ];
  // final items = [
  //   _buildNavItem(
  //     Icons.home_outlined,
  //   ),
  //   _buildNavItem(
  //     Icons.search_outlined,
  //   ),
  //   _buildNavItem(
  //     Icons.card_travel_outlined,
  //   ),
  //   _buildNavItem(
  //     Icons.person_2_outlined,
  //   ),
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: _selectedIndex == 0 ? const HomeDrawer() : null,
      endDrawer: _selectedIndex == 1 ? const SearchDrawer() : null,
      body: IndexedStack(
        index: _selectedBottomNavIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedBottomNavIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedBottomNavIndex = index; 
          });
        },
      ),
    );
  }
}

// BottomNavigationBarItem _buildNavItem(
//   IconData icon,
// ) {
//   return BottomNavigationBarItem(
//     icon: Padding(
//       padding: const EdgeInsets.only(right: 31, left: 31), // Adjust icon position
//       child: Icon(icon, size: 30),
//     ),
//     label: '',
//   );
// }
