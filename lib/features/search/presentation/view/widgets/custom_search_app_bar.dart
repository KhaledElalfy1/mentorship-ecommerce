import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/widgets/custom_back_button.dart';

AppBar customSearchAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    actions: [Container()],
    backgroundColor: Colors.white,
    leading: const CustomBackButton(),
  );
}
