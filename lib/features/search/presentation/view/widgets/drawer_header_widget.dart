import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/svgs.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.of(context).filter,
          style: Styles.textStyle20,
        ),
        SvgPicture.asset(Svgs.filter),
      ],
    );
  }
}
