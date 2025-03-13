import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/home_lists.dart';

import 'recommended_item.dart';

class RecommendedItems extends StatelessWidget {
  const RecommendedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66.h,
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: recommendedItemslist.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: RecommendedItem(
              recommendedItemModel: recommendedItemslist[index],
            ),
          ),
        ),
      ),
    );
  }
}
