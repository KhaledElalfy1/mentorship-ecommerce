import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/helper/font_family_helper.dart';
import 'package:mentorship_ecommerce/features/edit_profile/presentation/views/widgets/border_of_text_field.dart';

import '../../../../../core/helper/font_weight_helper.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class EditProfileEmail extends StatefulWidget {
  const EditProfileEmail({super.key});

  @override
  State<EditProfileEmail> createState() => _EditProfileNameState();
}

class _EditProfileNameState extends State<EditProfileEmail> {
  TextEditingController emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      decoration: InputDecoration(
        label: Text(
          'Email',
          style: Styles.textStyle14.copyWith(
            fontFamily: FontFamilyHelper.productSansMedium,
            fontWeight: FontWeightHelper.medium,
            color: AppColor.labelProfileColor,
          ),
        ),
        border: borderOfTextField(),
        focusedBorder: borderOfTextField(),
        enabledBorder: borderOfTextField(),
      ),
      style: Styles.textStyle16.copyWith(
        color: AppColor.inputColor,
        fontFamily: FontFamilyHelper.productSansMedium,
        fontWeight: FontWeightHelper.medium,
      ),
    );
  }
}
