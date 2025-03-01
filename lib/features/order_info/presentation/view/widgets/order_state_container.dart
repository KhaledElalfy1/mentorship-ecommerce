import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/svgs.dart';

class OrderStateContainer extends StatelessWidget {
  const OrderStateContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xff575757),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                S.of(context).yourOrderIsDelivered,
                style: Styles.textStyle16.copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                S.of(context).rateProductToGet,
                style: Styles.textStyle10.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SvgPicture.asset(Svgs.orderIcon),
        ],
      ),
    );
  }
}
