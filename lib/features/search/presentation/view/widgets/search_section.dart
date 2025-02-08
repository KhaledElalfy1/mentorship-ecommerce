import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/features/search/presentation/logic/search_cubit/search_cubit.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/custom_search_text_form_filed.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomSearchTextFormFiled(),
        ),
        SizedBox(
          width: 14.w,
        ),
        IconButton(
          style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all(AppColor.textFiledFilledColor),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
            shadowColor: WidgetStateProperty.all(Colors.grey.withOpacity(0.5)),
            elevation: WidgetStateProperty.all(1),
          ),
          onPressed: () {
            context.read<SearchCubit>().drawerKey.currentState!.openEndDrawer();
          },
          icon: const Icon(Icons.filter_list), //TODO change icon
        ),
      ],
    );
  }
}
