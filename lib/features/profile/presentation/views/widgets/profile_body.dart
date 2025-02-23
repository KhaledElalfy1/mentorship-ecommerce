import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'profile_appbar.dart';
import 'profile_details.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 96.h,left: 24.w,right: 24.w),
      child: const Column(
        children: [
         ProfileAppbar(),
         ProfileDetails(),
        ],
      ),
    );
  }
}