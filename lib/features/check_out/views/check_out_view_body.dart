import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/core/helper/spacing.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/utils/widgets/font_weight_helper.dart';
import 'package:mentorship_ecommerce/features/check_out/views/widgets/custom_text_field.dart';

import '../../../core/routes/routes.dart';
import '../../cart/presentation/views/widgets/custom_cart_appbar.dart';
import 'widgets/custom_align_text.dart';
import 'widgets/custom_progress_order.dart';
import 'widgets/custom_shipping_button.dart';
import 'widgets/custom_shipping_method.dart';

class CheckoutAppViewBody extends StatefulWidget {
  const CheckoutAppViewBody({super.key});

  @override
  State<CheckoutAppViewBody> createState() => _CheckoutAppViewBodyState();
}
class _CheckoutAppViewBodyState extends State<CheckoutAppViewBody> {
  final formKey = GlobalKey<FormState>();

  // إنشاء `Map` لتخزين Controllers لكل حقل
  final Map<String, TextEditingController> controllers = {
    'First name *': TextEditingController(),
    'Last name *': TextEditingController(),
    'Country *': TextEditingController(),
    'Street name *': TextEditingController(),
    'City *': TextEditingController(),
    'State / province *': TextEditingController(),
    'Zip - Code *': TextEditingController(),
    'Phone number *': TextEditingController(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formKey, // إضافة مفتاح النموذج
          child: Column(
            children: [
              const CustomCartAppbar(title: "Check out"),
              verticalSpace(28.h),

              // Progress Row
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

              // Shipping Form
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Padding(
                  padding: EdgeInsets.only(right: 45.w),
                  child: Column(
                    children: controllers.keys.map((label) {
                      return Column(
                        children: [
                          CustomTextField(
                            label:  label,
                            
                            controller: controllers[label]!,
                            suffixIcon: label == 'Country *'
                                ? const Icon(Icons.keyboard_arrow_down,
                                    color: Colors.black)
                                : null, // إضافة الأيقونة فقط لحقل Country
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                          ),
                          verticalSpace(20.h),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
              verticalSpace(20.h),

              // Shipping Method Section
             const  CustomShippingMethod(),
              verticalSpace(30.h),

              //* Continue to Payment Button
              CustomShippingButton(text: 'Continue to Payment',onClicked: 
              () => context.pushNamed(Routes.checkOutSuccess),formKey:formKey ,
              ),
              verticalSpace(30.h),
            ],
          ),
        ),
      ),
    );
  }
}

