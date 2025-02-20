import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class SearchResultHeader extends StatelessWidget {
  const SearchResultHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Recent Searches',
          style: Styles.textStyle16.copyWith(
            color: const Color(
              0xff9B9A99,
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.trash),
        ),
      ],
    );
  }
}
