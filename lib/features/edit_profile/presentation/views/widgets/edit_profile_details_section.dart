import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'edit_profile_email.dart';
import 'edit_profile_name_section.dart';
import 'edit_profile_phone_and_gender_section.dart';

class EditProfileDetailsSection extends StatelessWidget {
  const EditProfileDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          const EditProfileNameSection(),
          SizedBox(height: 30.h), 
          const EditProfileEmail(),
          SizedBox(height: 30.h),
          const EditProfilePhoneAndGenderSection(),
        ],
      ),
    );
  }
}
