import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_edit_profile_app_bar.dart';
import 'custom_edit_profile_image.dart';
import 'custom_edit_search_button.dart';
import 'edit_profile_details_section.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomEditProfileAppBar(),
            SizedBox(
              height: 40.h,
            ),
            const CustomEditProfileImage(),
            SizedBox(
              height: 94.h,
            ),
            const EditProfileDetailsSection(),
            SizedBox(
              height: 113.h,
            ),
            const CustomEditSearchButton()
          ],
        ),
      ),
    );
  }
}
