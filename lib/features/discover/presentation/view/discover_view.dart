import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:mentorship_ecommerce/features/discover/presentation/view/widget/category_section_list_view.dart';
import 'package:mentorship_ecommerce/features/discover/presentation/view/widget/custom_category_container.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/search_section.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const CustomAppBar(
            title: 'Discover',
            isNeedBellIcon: true,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                const SearchSection(),
                SizedBox(
                  height: 20.h,
                ),
                const CustomCategoryContainer(
                  backgroundColor: 0xffA3A798,
                  circleColor: 0xffC2C7B5,
                  category: 'Clothing',
                  image: 'assets/images/clothes.png',
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CategorySectionListView(),
                SizedBox(
                  height: 20.h,
                ),
                const CustomCategoryContainer(
                  backgroundColor: 0xff898280,
                  circleColor: 0xffF9C9492,
                  category: 'accessories',
                  image: 'assets/images/accessories.png',
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomCategoryContainer(
                  backgroundColor: 0xff44565C,
                  circleColor: 0xff5B7178,
                  category: 'shoes',
                  image: 'assets/images/shoes.png',
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomCategoryContainer(
                  backgroundColor: 0xffB9AEB2,
                  circleColor: 0xffD1CACD,
                  category: 'collections',
                  image: 'assets/images/clothes.png',
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
