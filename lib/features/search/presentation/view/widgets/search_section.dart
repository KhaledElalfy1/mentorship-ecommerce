import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/features/search/presentation/logic/search_cubit/search_cubit.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/widgets/custom_search_text_form_filed.dart';
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
              Assets.filter,
            ),
          ),
        ),
      ],
    );
  }
}
