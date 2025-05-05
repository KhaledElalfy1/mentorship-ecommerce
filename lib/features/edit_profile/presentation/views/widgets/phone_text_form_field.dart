import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mentorship_ecommerce/core/helper/app_regex.dart';
import 'package:mentorship_ecommerce/core/helper/font_family_helper.dart';
import 'package:mentorship_ecommerce/core/helper/font_weight_helper.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/edit_profile/presentation/views/widgets/border_of_text_field.dart';

class PhoneTextFormField extends StatefulWidget {
  const PhoneTextFormField({super.key});

  @override
  State<PhoneTextFormField> createState() => _PhoneTextFormFieldState();
}

class _PhoneTextFormFieldState extends State<PhoneTextFormField> {
  TextEditingController phoneController = TextEditingController();
  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(11),
          FilteringTextInputFormatter.allow(AppRegex.onlyNumbers)
        ],
        controller: phoneController,
        decoration: InputDecoration(
          prefixText: '(+2)',
          label: Text(
            'Phone',
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
