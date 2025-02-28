import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/edit_profile/presentation/views/widgets/gender_text_form_field.dart';
import 'package:mentorship_ecommerce/features/edit_profile/presentation/views/widgets/phone_text_form_field.dart';

class EditProfilePhoneAndGenderSection extends StatefulWidget {
  const EditProfilePhoneAndGenderSection({super.key});

  @override
  State<EditProfilePhoneAndGenderSection> createState() => _EditProfilePhoneAndGenderSectionState();
}

class _EditProfilePhoneAndGenderSectionState extends State<EditProfilePhoneAndGenderSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const GenderTextFormField(),
        SizedBox(
          width: 8.w,
        ),
        const PhoneTextFormField(),
      ],
    );
  }
}
