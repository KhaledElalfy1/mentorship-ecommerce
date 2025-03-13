import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/discover/data/models/category_model.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/svgs.dart';

class CategorySectionNavigator extends StatelessWidget {
  const CategorySectionNavigator({
    super.key,
    required this.category,
    required this.onTap,
  });
  final CategoryModel category;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                category.category,
                style: Styles.textStyle14,
              ),
              const Spacer(),
              Text(
                '${category.numberOfItems} ${S.of(context).items}',
                style: Styles.textStyle12.copyWith(
                  color: const Color(0xffA3A5AD),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              SvgPicture.asset(Svgs.rightArrow),
            ],
          ),
          const Divider(
            color: Color(0xffF1F2F4),
            thickness: 1.5,
            height: 30,
          )
        ],
      ),
    );
  }
}
