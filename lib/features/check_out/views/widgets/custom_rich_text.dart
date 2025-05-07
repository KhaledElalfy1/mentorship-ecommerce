import 'dart:ui';

import 'package:mentorship_ecommerce/core/widgets/custom_text_field.dart';
import 'package:mentorship_ecommerce/core/helper/font_weight_helper.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/routes/routes_exports.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.widget,
    required this.starColor,
  });

  final CustomTextField widget;
  final Color starColor;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: widget.label?.trim() ?? '',
        style: Styles.textStyle12.copyWith(
          fontWeight: FontWeightHelper.semiBold,
          color: Colors.black,
        ),
        
        children: [
          WidgetSpan(child: horizontalSpace(3.w)), 
          TextSpan(
            text: '*',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeightHelper.semiBold,
              color: starColor,
            ),
          ),
        ],
       
      ),
    );
  }
}