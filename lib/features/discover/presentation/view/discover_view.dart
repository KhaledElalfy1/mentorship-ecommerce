import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'widget/category_section_list_view.dart';
import 'widget/custom_category_container.dart';
import '../../../search/presentation/view/widgets/search_section.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverView extends StatelessWidget {
  // TODO: Refactor file. Keep classes, functions, and files under 50 lines to improve readability.

  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
           CustomAppBar(
            title: S.of(context).discover,
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
                 CustomCategoryContainer(
                  backgroundColor: 0xffA3A798,
                  circleColor: 0xffC2C7B5,
                  category:S.of(context).clothing ,
                  image: Assets.clothing,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CategorySectionListView(),
                SizedBox(
                  height: 20.h,
                ),
                 CustomCategoryContainer(
                  backgroundColor: 0xff898280,
                  circleColor: 0xffF9C9492,
                  category: S.of(context).accessories,
                  image: Assets.accessories,
                ),
                SizedBox(
                  height: 20.h,
                ),
                 CustomCategoryContainer(
                  backgroundColor: 0xff44565C,
                  circleColor: 0xff5B7178,
                  category: S.of(context).shoes,
                  image: Assets.shoes,
                ),
                SizedBox(
                  height: 20.h,
                ),
                 CustomCategoryContainer(
                  backgroundColor: 0xffB9AEB2,
                  circleColor: 0xffD1CACD,
                  category: S.of(context).collection,
                  image: Assets.clothing,
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
