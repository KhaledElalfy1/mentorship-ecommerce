
import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';


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
          "Filter",
          style: Styles.textStyle20,
        ),
        const Icon(Icons.filter_list),
      ],
    );
  }
}

