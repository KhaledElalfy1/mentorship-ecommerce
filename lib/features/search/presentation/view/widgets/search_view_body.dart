import 'package:flutter/material.dart';
import '../../logic/search_cubit/search_cubit.dart';
import 'custom_search_app_bar.dart';
import 'search_drawer.dart';
import 'search_result_header.dart';
import 'search_result_item.dart';
import 'search_section.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerKey = context.read<SearchCubit>();

    return Scaffold(
      key: drawerKey.drawerKey,
      endDrawer: const SearchDrawer(),
      backgroundColor: Colors.white,
      appBar: customSearchAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 32.0.w,
        ),
        child: Column(
          children: [
            const SearchSection(),
            SizedBox(
              height: 20.h,
            ),
            const SearchResultHeader(),
            SizedBox(
              height: 20.h,
            ),
            Wrap(
              children: List.generate(
                5,
                (index) => SearchResultItem(text: 'we' * (index + 1)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
