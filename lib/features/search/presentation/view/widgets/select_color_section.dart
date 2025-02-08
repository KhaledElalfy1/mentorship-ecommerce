
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SelectColorSection extends StatelessWidget {
  const SelectColorSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(7, (index) {
          return Padding(
            padding: EdgeInsets.only(right: 10.0.w),
            child: Container(
              width: 22.w,
              height: 22.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.primaries[index],
              ),
            ),
          );
        }),
      ),
    );
  }
}
