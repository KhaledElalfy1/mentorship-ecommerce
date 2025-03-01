import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';

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
            40.addVerticalSpace,
            const CustomEditProfileImage(),
            94.addVerticalSpace,
            const EditProfileDetailsSection(),
            113.addVerticalSpace,
            const CustomEditSearchButton()
          ],
        ),
      ),
    );
  }
}
