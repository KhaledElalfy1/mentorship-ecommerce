import '../../../../core/helper/spacing.dart';
import '../../../../core/routes/routes_exports.dart';
import '../../../../core/helper/font_weight_helper.dart';

class FreeDeliveryToHomeWidget extends StatelessWidget {
  const FreeDeliveryToHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Free ',
            style: Styles.textStyle14.copyWith(
                color: AppColor.blackColor,
                fontWeight: FontWeightHelper.regular),
          ),
          WidgetSpan(child: horizontalSpace(10.w)),
          TextSpan(
            text: 'Delivery to home',
            style: Styles.textStyle14.copyWith(
                color: AppColor.grey,
                fontWeight: FontWeightHelper.regular),
          ),
        ],
      ),
    );
  }
}