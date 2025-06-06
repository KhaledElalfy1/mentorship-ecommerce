import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
import '../../../../../core/helper/extention.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class OrderActionButtons extends StatelessWidget {
  const OrderActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
            minimumSize: WidgetStateProperty.all<Size>(
              Size(
                160.w,
                48.h,
              ),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  24.0.r,
                ),
                side: const BorderSide(
                  color: Color(0xff777E90),
                ),
              ),
            ),
          ),
          onPressed: () {
            context.pushReplacementNamed(Routes.home);
          },
          child: Text(
           S.of(context).returnHome,
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.normal,
              color: const Color(
                0xff777E90,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 120.w,
          height: 50.h,
          child: CustomButton(
            buttonText:S.of(context).rate,
            onPressed: () {
              context.pushNamed(Routes.orderRate);
            },
          ),
        ),
      ],
    );
  }
}
