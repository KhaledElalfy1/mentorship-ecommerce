import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/features/discover/data/models/category_model.dart';
import 'package:mentorship_ecommerce/features/discover/presentation/view/widget/categories_section.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'widget/category_section_list_view.dart';
import 'widget/custom_category_container.dart';
import '../../../search/presentation/view/widgets/search_section.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverView extends StatelessWidget {
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
                  categoryModel: CategoryModel(
                    backgroundColor: 0xffA3A798,
                    circleColor: 0xffC2C7B5,
                    numberOfItems: '12',
                    category: S.current.clothing,
                    image: Assets.clothing,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CategorySectionListView(),
                SizedBox(
                  height: 20.h,
                ),
                const CategoriesSection()
              ],
            ),
          )
        ],
      ),
    );
  }
}
