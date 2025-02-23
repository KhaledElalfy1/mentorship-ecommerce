import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/svgs.dart';
import '../../logic/search_cubit/search_cubit.dart';
import 'custom_search_text_form_filed.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: CustomSearchTextFormFiled(),
        ),
        SizedBox(
          width: 14.w,
        ),
        Material(
          elevation: 1,
          color: AppColor.textFiledFilledColor,
          borderRadius: BorderRadius.circular(15.r),
          child: IconButton(
            onPressed: () {
              context
                  .read<SearchCubit>()
                  .drawerKey
                  .currentState!
                  .openEndDrawer();
            },
            icon: SvgPicture.asset(
              Svgs.filter,
            ),
          ),
        ),
      ],
    );
  }
}
