import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/search/presentation/logic/search_cubit/search_cubit.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/custom_search_app_bar.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/search_drawer.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/search_result_header.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/search_result_item.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/search_section.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<SearchCubit>().drawerKey,
      endDrawer:const SearchDrawer(),
      backgroundColor: Colors.white,
      appBar: customSearchAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 32.0.w,
        ),
        child: Column(
          children: [
          const  SearchSection(),
            SizedBox(
              height: 20.h,
            ),
            const SearchResultHeader(),
            SizedBox(
              height: 20.h,
            ),
            const Wrap(
              children: [
                SearchResultItem(
                  text:
                      'SunglassesSunglassesSunglassesSunglassesSunglassesSunglassesSunglassesSunglassesSunglassesSunglassesSunglasses',
                ),
                SearchResultItem(
                  text: 'Sunglasses',
                ),
                SearchResultItem(text: 'Sweater'),
                SearchResultItem(text: 'Sweater'),
                SearchResultItem(text: 'Sweater'),
                SearchResultItem(text: 'sw'),
                SearchResultItem(text: 'er'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
