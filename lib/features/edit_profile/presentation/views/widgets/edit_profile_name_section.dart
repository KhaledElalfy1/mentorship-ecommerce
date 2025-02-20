import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/widgets/font_weight_helper.dart';

class EditProfileNameSection extends StatefulWidget {
  const EditProfileNameSection({super.key});

  @override
  State<EditProfileNameSection> createState() => _EditProfileNameState();
}

class _EditProfileNameState extends State<EditProfileNameSection> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: TextFormField(
            controller: firstNameController,
            decoration: InputDecoration(
              label: Text(
                'First Name',
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
          child: TextFormField(
            controller: lastNameController,
            decoration: InputDecoration(
              label: Text(
                'First Name',
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
