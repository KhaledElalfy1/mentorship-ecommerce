import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/choose_category_section.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/custom_range_slider.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/discount_section.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/drawer_header_widget.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/filter_action_section.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/product_rating_list_view.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/select_color_section.dart';

class SearchDrawer extends StatelessWidget {
  const SearchDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            const DrawerHeaderWidget(),
            Divider(
              color: const Color(0xffF3F3F6),
              thickness: 1,
              height: 60.h,
            ),
            Text(
              "price",
              style: Styles.textStyle14,
            ),
            SizedBox(
              height: 20.h,
            ),
            const CustomRangeSlider(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Color",
              style: Styles.textStyle14,
            ),
            SizedBox(
              height: 20.h,
            ),
            const SelectColorSection(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Star Rating",
              style: Styles.textStyle14,
            ),
            SizedBox(
              height: 20.h,
            ),
            const ProductRatingListView(),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Category",
              style: Styles.textStyle14,
            ),
            SizedBox(
              height: 20.h,
            ),
            const ChooseCategorySection(),
            SizedBox(
              height: 20.h,
            ),
            Text('DisCount', style: Styles.textStyle14),
            SizedBox(
              height: 20.h,
            ),
            const DiscountSection(),
            SizedBox(
              height: 20.h,
            ),
            const FilterActionSection(),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
