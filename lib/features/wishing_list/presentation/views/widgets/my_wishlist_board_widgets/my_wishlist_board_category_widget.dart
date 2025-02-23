import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/routes/routes.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/svgs.dart';
import 'grid_view_widget.dart';

class MyWishlistBoardCategoryWidget extends StatelessWidget {
  const MyWishlistBoardCategoryWidget(
      {super.key,
      required this.images,
      required this.categoryName,
      required this.numOfProducts});
  final List<String> images;
  final String categoryName;
  final int numOfProducts;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: 331.w,
      margin: EdgeInsets.only(top: 30.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridViewWidget(images: images),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                categoryName,
                style: Styles.textStyle22,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.wishListItems);
                  },
                  icon: SvgPicture.asset(
                    Svgs.rightArrowIcon,
                    height: 20.h,
                    width: 20.w,
                    color: AppColor.darkGray,
                  ))
            ],
          ),
          Text(
            "$numOfProducts items",
            style: Styles.textStyle12.copyWith(color: AppColor.grey),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(
            color: AppColor.divider3Color,
          )
        ],
      ),
    );
  }
}
