import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/font_weight_helper.dart';

class EditProfileEmail extends StatefulWidget {
  const EditProfileEmail({super.key});

  @override
  State<EditProfileEmail> createState() => _EditProfileNameState();
}

class _EditProfileNameState extends State<EditProfileEmail> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      decoration: InputDecoration(
        label: Text(
          'Email',
          style: Styles.textStyle14.copyWith(
            fontFamily: Constants.productSansMedium,
            fontWeight: FontWeightHelper.medium,
            color: AppColor.labelProfileColor,
          ),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.underLineBorder, width: 1.0),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.underLineBorder, width: 1.0),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.underLineBorder, width: 1.0),
        ),
      ),
      style: Styles.textStyle16.copyWith(
        color: AppColor.inputColor,
        fontFamily: Constants.productSansMedium,
        fontWeight: FontWeightHelper.medium,
      ),
    );
  }
}
