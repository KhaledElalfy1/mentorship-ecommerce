import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/assets.dart';

class CustomEditProfileImage extends StatelessWidget {
  const CustomEditProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      width: 110.w,
      child: Stack(children: [
        Container(
          width: 96.w,
          height: 96.h,
          decoration: const ShapeDecoration(
            shape: CircleBorder(),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(
            Assets.avater,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            decoration: const ShapeDecoration(shape: CircleBorder(), color: AppColor.textColor),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: AppColor.whiteColor,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
