import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/utils/svgs.dart';

class CategorySectionNavigator extends StatelessWidget {
  const CategorySectionNavigator({
    super.key,
    required this.category,
    required this.items,
    required this.onTap,
  });
  final String category;
  final String items;
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
                category,
                style: Styles.textStyle14,
              ),
              const Spacer(),
              Text(
                items,
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
