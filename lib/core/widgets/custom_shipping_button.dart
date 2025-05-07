import '../routes/routes_exports.dart';
import '../helper/font_weight_helper.dart';

class CustomShippingButton extends StatelessWidget {
  const CustomShippingButton({super.key, required this.text, this.onClicked, this.formKey});
  
  final String text;
  final void Function()? onClicked;
  final GlobalKey<FormState>? formKey;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      
          style: ElevatedButton.styleFrom(
            elevation: 0.5,
            minimumSize: const Size(double.infinity, 48),
            backgroundColor: AppColor.paymentButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.r),
            ),
          ),
          onPressed: () => _validateAndProceed(context),
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(
              color: AppColor.whiteColor,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
        );
  }
  
    void _validateAndProceed(BuildContext context) {
    if (formKey == null || formKey!.currentState?.validate() == true) {
      onClicked?.call();
    } else {
      // ignore: avoid_returning_null_for_void
      return null;
      }
  }
   
}

