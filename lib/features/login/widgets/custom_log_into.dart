import 'package:flutter/material.dart';

import '../../../core/utils/styles.dart';

class CustomLogInto extends StatelessWidget {
  const CustomLogInto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Log into',
          style: Styles.textStyle24SemiBold,
        ),
        Text(
          'your account',
          style: Styles.textStyle24SemiBold,
        ),
      ],
    );
  }
}