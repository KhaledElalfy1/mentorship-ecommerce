import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/font_weight_helper.dart';

class EditProfilePhoneAndGenderSection extends StatefulWidget {
  const EditProfilePhoneAndGenderSection({super.key});

  @override
  State<EditProfilePhoneAndGenderSection> createState() => _EditProfilePhoneAndGenderSectionState();
}

class _EditProfilePhoneAndGenderSectionState extends State<EditProfilePhoneAndGenderSection> {
  TextEditingController genderController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
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
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Expanded(
          flex: 2,
          child: TextFormField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(11),
              FilteringTextInputFormatter.allow(RegExp('[0-9]+'))
            ],
            controller: phoneController,
            decoration: InputDecoration(
              prefixText: '(+2)',
              label: Text(
                'Phone',
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
          ),
        ),
      ],
    );
  }
}
