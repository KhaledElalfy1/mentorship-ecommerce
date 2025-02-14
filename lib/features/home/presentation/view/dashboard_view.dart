import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/features/discover/presentation/view/discover_view.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/home_view.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/product_full_view.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/search_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selectedIndex = 0;
  Widget? currentPage;

  final List<Widget> _pages = const [
    HomeView(),
    SearchView(),
    ProductFullView(),
    DiscoverView()
  ];
  final items = [
    _buildNavItem(
      Icons.home_outlined,
    ),
    _buildNavItem(
      Icons.search_outlined,
    ),
    _buildNavItem(
      Icons.card_travel_outlined,
    ),
    _buildNavItem(
      Icons.person_2_outlined,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            backgroundColor: AppColor.bottomBackgroundColor,
            elevation: 0,
            items: items.map((item) => item).toList(),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            enableFeedback: true,
            selectedIconTheme:
                const IconThemeData(color: AppColor.gunmetalGray, size: 30),
            unselectedIconTheme:
                const IconThemeData(color: AppColor.coolGray, size: 30),
            onTap: _onItemTapped,
          ),
        ));
  }
}

BottomNavigationBarItem _buildNavItem(
  IconData icon,
) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding:
          const EdgeInsets.only(right: 31, left: 31), // Adjust icon position
      child: Icon(icon, size: 30),
    ),
    label: '',
  );
}
