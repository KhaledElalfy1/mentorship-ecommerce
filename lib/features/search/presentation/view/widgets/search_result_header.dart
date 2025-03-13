import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/svgs.dart';

class SearchResultHeader extends StatelessWidget {
  const SearchResultHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).recentSearch,
          style: Styles.textStyle16.copyWith(
            color: const Color(
              0xff9B9A99,
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Svgs.trash),
        ),
      ],
    );
  }
}
