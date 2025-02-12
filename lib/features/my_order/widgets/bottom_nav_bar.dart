import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorship_ecommerce/core/utils/svgs.dart';
import '../../../core/utils/app_color.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      width: 370.w,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        border: Border.all(
          color: AppColor.lightgrey.withOpacity(0.1),
          width: 2, 
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent, 
            highlightColor: Colors.transparent, 
          ),
          child: BottomNavigationBar(
            
            backgroundColor: Colors.white,
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            type: BottomNavigationBarType.fixed,
            enableFeedback: false,
            selectedItemColor: Colors.transparent, 
            unselectedItemColor: AppColor.unSelectedTabIconColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedFontSize: 0, 
            unselectedFontSize: 0, 
            items: [
              _buildNavItem(Svgs.homeIcon, 0),
              _buildNavItem(Svgs.searchIcon, 1),
              _buildNavItem(Svgs.bugIcon, 2),
              _buildNavItem(Svgs.personIcon, 3),
            ],
          ),
        ),
      ),
    );
  }
  BottomNavigationBarItem _buildNavItem(String assetPath, int index) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      assetPath,
      width: 21,
      height: 22,
      colorFilter: ColorFilter.mode(
        selectedIndex == index
            ? Colors.black
            : AppColor.unSelectedTabIconColor,
        BlendMode.srcIn,
      ),
    ),
    label: '',
  );
}
}
