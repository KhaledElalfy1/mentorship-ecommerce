import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';

class GenerateDots extends StatelessWidget {
  const GenerateDots({super.key, required this.imageList, required this.currentIndex});
   final List imageList;
   final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 385.h,right: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          imageList.length,
          (index) => AnimatedContainer(
            duration:const Duration(milliseconds: 300),
            margin:const EdgeInsets.symmetric(horizontal: 4),
            width: currentIndex == index ? 10.5 : 4.5.w, 
            height: currentIndex == index ? 10.5.h : 4.5.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: currentIndex == index
                  ? Border.all(
                      color:AppColor.dotColor,
                      width: 1.w) 
                  : null,
              color: currentIndex == index
                  ? Colors.white
                  :AppColor.dotColor, 
            ),
            child: currentIndex == index
                ? Center(
                    child: Container(
                      width: 5.5.w,
                      height: 5.5.h,
                      decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                        color :AppColor.dotColor,
                      ),
                    ),
                  )
                : null,
          ),
        ),
      ),
    );

  }
}