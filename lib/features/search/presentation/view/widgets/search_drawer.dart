import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/search_drawer_widgets_section.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'choose_category_section.dart';
import 'custom_range_slider.dart';
import 'discount_section.dart';
import 'drawer_header_widget.dart';
import 'filter_action_section.dart';
import 'product_rating_list_view.dart';
import 'select_color_section.dart';

class SearchDrawer extends StatelessWidget {
  const SearchDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 20.h),
        child: ListView(
          children: [
            const DrawerHeaderWidget(),
            Divider(
              color: const Color(0xffF3F3F6),
              thickness: 1,
              height: 60.h,
            ),
            SearchDrawerWidgetsSection(
              text: S.of(context).price,
              widget: const CustomRangeSlider(),
            ),
            SearchDrawerWidgetsSection(
              text: S.of(context).color,
              widget: const SelectColorSection(),
            ),
            SearchDrawerWidgetsSection(
              text: S.of(context).rating,
              widget: const ProductRatingListView(),
            ),
            SearchDrawerWidgetsSection(
              text: S.of(context).category,
              widget: const ChooseCategorySection(),
            ),
            SearchDrawerWidgetsSection(
              text: S.of(context).discount,
              widget: const DiscountSection(),
            ),
            const FilterActionSection(),
          ],
        ),
      ),
    );
  }
}
