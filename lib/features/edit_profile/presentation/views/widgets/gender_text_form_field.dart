import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/widgets/font_weight_helper.dart';
import 'package:mentorship_ecommerce/features/edit_profile/presentation/views/widgets/border_of_text_field.dart';

class GenderTextFormField extends StatefulWidget {
  const GenderTextFormField({super.key});

  @override
  State<GenderTextFormField> createState() => _GenderTextFormFieldState();
}

class _GenderTextFormFieldState extends State<GenderTextFormField> {
  TextEditingController genderController = TextEditingController();
  @override
  void dispose() {
    genderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        controller: genderController,
        decoration: InputDecoration(
          label: Text(
            'Gender',
            style: Styles.textStyle14.copyWith(
              fontFamily: Constants.productSansMedium,
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
          fontFamily: Constants.productSansMedium,
          fontWeight: FontWeightHelper.medium,
        ),
      ),
    );
  }
}
