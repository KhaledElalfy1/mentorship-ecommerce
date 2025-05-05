import 'package:mentorship_ecommerce/core/helper/spacing.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/features/cart/presentation/views/widgets/custom_cart_appbar.dart';
import '../../../core/routes/routes_exports.dart';
import '../../../core/widgets/custom_shipping_button.dart';
import '../../../core/helper/font_weight_helper.dart';
import 'widgets/custom_progress_order.dart';

class CheckOutSuccessView extends StatelessWidget {
  const CheckOutSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Center(
        child: Column(
          children: [
            _buildAppBar(),
            verticalSpace(28.h),
            _buildProgressOrder(),
            verticalSpace(60.h),
            _buildOrderCompletedsText(),
            verticalSpace(80.h),
            _buildImage(),
            verticalSpace(40.h),
            _buildDescription(),
            verticalSpace(100.h),
            _buildButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return const CustomCartAppbar(title: "Check out");
  }

  Widget _buildProgressOrder() {
    return const  CustomProgressOrder(
      color:  AppColor.blackColor,
    );
  }

  Widget _buildOrderCompletedsText() {
    return Text(
      textAlign: TextAlign.center,
      'Order Completed',
      style: Styles.textStyle25.copyWith(fontWeight: FontWeightHelper.medium),
    );
  }

  Widget _buildImage() {
    return Image.asset(Assets.orderCompleted);
  }

  Widget _buildDescription() {
    return Text(
      'Thank you for your purchase.\nYou can view your order in \' your order \' section',
      style: Styles.textStyle14.copyWith(fontWeight: FontWeightHelper.regular),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.w, right: 32.w),
      child: CustomShippingButton(
        text: 'Continue Shopping',
        onClicked: () => Navigator.pushNamed(context, Routes.dashboard),
      ),
    );
  }
}