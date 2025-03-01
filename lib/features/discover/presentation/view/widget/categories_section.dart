import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/features/discover/data/models/category_model.dart';
import 'package:mentorship_ecommerce/features/discover/presentation/view/widget/custom_category_container.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({super.key});

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  List<CategoryModel> categories = [
    CategoryModel(
      backgroundColor: 0xff898280,
      numberOfItems: '12',
      circleColor: 0xffF9C9492,
      category: S.current.accessories,
      image: Assets.accessories,
    ),
    CategoryModel(
      backgroundColor: 0xff44565C,
      circleColor: 0xff5B7178,
      numberOfItems: '12',
      category: S.current.shoes,
      image: Assets.shoes,
    ),
    CategoryModel(
      backgroundColor: 0xffB9AEB2,
      circleColor: 0xffD1CACD,
      numberOfItems: '12',
      category: S.current.collection,
      image: Assets.clothing,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        categories.length,
        (index) => Padding(
          padding: EdgeInsets.only(bottom: 20.0.h),
          child: CustomCategoryContainer(
            categoryModel: categories[index],
          ),
        ),
      ),
    );
  }
}
