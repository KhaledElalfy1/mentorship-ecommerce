// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/font_weight_helper.dart';

class CustomShippingButton extends StatelessWidget {
  const CustomShippingButton({
    super.key,
    required this.text,
    this.formKey,
    this.onClicked,
  });

  final void Function()? onClicked;
  final String text;
  final GlobalKey<FormState>? formKey; // جعل formKey اختياريًا

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        width: double.infinity,
        height: 50.h,
        //TODO: Use core's button
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.paymentButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.r),
            ),
          ),
          onPressed: () {
            // التحقق من صحة النموذج فقط إذا كان formKey موجودًا
            // TODO: Extract method and apply this approach to all other validations (e.g., TextFormField)
            _customShippingButtonValidating();
          },
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(
              color: AppColor.whiteColor,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
        ),
      ),
    );
  }

  void _customShippingButtonValidating() {
    if (formKey == null || formKey!.currentState?.validate() == true) {
      //* ✅ إذا كان التحقق ناجحًا، أو لم يتم توفير formKey، نفذ onClicked
      onClicked?.call();
    } else {
      //* ❌ إذا كان هناك أخطاء، عرض رسالة تنبيهية
      print("Some fields are empty!");
    }
  }
}
