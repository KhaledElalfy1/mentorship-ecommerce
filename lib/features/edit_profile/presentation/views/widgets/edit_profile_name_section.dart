import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/features/edit_profile/presentation/views/widgets/first_name_text_field.dart';
import 'package:mentorship_ecommerce/features/edit_profile/presentation/views/widgets/last_name_text_field.dart';

class EditProfileNameSection extends StatefulWidget {
  const EditProfileNameSection({super.key});

  @override
  State<EditProfileNameSection> createState() => _EditProfileNameState();
}

class _EditProfileNameState extends State<EditProfileNameSection> {
  @override
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const FirstNameTextField(),
        8.addHorizontalSpace,
        const LastNameTextField(),
      ],
    );
  }
}
