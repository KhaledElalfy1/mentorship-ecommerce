import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/discover/data/models/category_model.dart';
import '../../../../../core/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryContainer extends StatelessWidget {
  const CustomCategoryContainer({
    
    super.key,
  required this.categoryModel,
  });
 final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Color(categoryModel.backgroundColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryModel.category,
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: Color(categoryModel.circleColor).withOpacity(.5),
                radius: 120 / 2,
                child: CircleAvatar(
                  backgroundColor: Color(categoryModel.circleColor),
                  radius: 100 / 2,
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: Image.asset(
                  categoryModel.image,
                  width: 100.w,
                  height: 100.h,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
