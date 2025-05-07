import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/helper/font_family_helper.dart';
import 'package:mentorship_ecommerce/core/helper/font_weight_helper.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/edit_profile/presentation/views/widgets/border_of_text_field.dart';

class FirstNameTextField extends StatefulWidget {
  const FirstNameTextField({super.key});

  @override
  State<FirstNameTextField> createState() => _FirstNameTextFieldState();
}

class _FirstNameTextFieldState extends State<FirstNameTextField> {
  TextEditingController firstNameController = TextEditingController();
  @override
  void dispose() {
    firstNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: TextFormField(
        controller: firstNameController,
        decoration: InputDecoration(
          label: Text(
            'First Name',
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
      ),
    );
  }
}
