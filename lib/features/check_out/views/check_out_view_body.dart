import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/functions/firebase_analytics_log_event.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/utils/styles.dart';
import '../../../core/widgets/font_weight_helper.dart';
import '../../../core/routes/routes.dart';
import '../../cart/presentation/views/widgets/custom_cart_appbar.dart';
import 'widgets/custom_align_text.dart';
import 'widgets/custom_progress_order.dart';
import '../../../core/widgets/custom_shipping_button.dart';
import 'widgets/custom_shipping_method.dart';
import 'widgets/shipping_form.dart';

class CheckoutAppViewBody extends StatefulWidget {
  const CheckoutAppViewBody({super.key});

  @override
  State<CheckoutAppViewBody> createState() => _CheckoutAppViewBodyState();
}

class _CheckoutAppViewBodyState extends State<CheckoutAppViewBody> {
  final formKey = GlobalKey<FormState>();

  final Map<String, TextEditingController> controllers = {
    'First name ': TextEditingController(),
    'Last name ': TextEditingController(),
    'Country ': TextEditingController(),
    'Street name ': TextEditingController(),
    'City ': TextEditingController(),
    'State / province ': TextEditingController(),
    'Zip - Code ': TextEditingController(),
    'Phone number ': TextEditingController(),
  };

  @override
  void dispose() {
    for (var controller in controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  String? _validateField(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const CustomCartAppbar(title: "Check out"),
              verticalSpace(28.h),
              const CustomProgressOrder(),
              verticalSpace(29.h),
              CustomAlignText(
                text: 'STEP 1',
                style: Styles.textStyle11
                    .copyWith(fontWeight: FontWeightHelper.regular),
              ),
              verticalSpace(10.h),
              CustomAlignText(
                text: 'Shipping',
                style: Styles.textStyle25
                    .copyWith(fontWeight: FontWeightHelper.medium),
              ),
              verticalSpace(20.h),
              ShippingForm(
                controllers: controllers,
                validator: _validateField,
              ),
              verticalSpace(20.h),
              const CustomShippingMethod(),
              verticalSpace(30.h),
              CustomShippingButton(
                text: 'Continue to Payment',
                onClicked: () {
                  if (formKey.currentState!.validate()) {
                    firebaseAnalyticsLogEvent(
                      firebaseAnalyticsEventModel: FirebaseAnalyticsEventModel(
                        name: "proceed_to_payment",
                        parameters: {
                          "action": "proceed_to_payment",
                        },
                      ),
                    );
                    context.pushNamed(Routes.checkOutSuccess);
                  }
                },
                formKey: formKey,
              ),
              verticalSpace(30.h),
            ],
          ),
        ),
      ),
    );
  }
}
