import 'package:flutter/material.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/utils/widgets/font_weight_helper.dart';

class CustomTextField extends StatefulWidget {
  final String? label;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Icon? suffixIcon;

  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.validator,
    this.suffixIcon,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Color starColor = Colors.green; // اللون الافتراضي للنجمة
  late FocusNode _focusNode; // إزالة nullable (?) وإضافة late

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    // مراقبة متى يتم التركيز على الحقل
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        setState(() {
          starColor = Colors.red; // بمجرد الضغط على الحقل، تصبح النجمة حمراء
        });
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: _focusNode, // ربط الحقل بـ FocusNode
      validator: (value) {
        setState(() {
          // تغيير لون النجمة بناءً على إدخال المستخدم
          starColor = (value == null || value.isEmpty) ? Colors.red : Colors.green;
        });

        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffF1F2F3), width: 2),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red.withOpacity(0.7), width: 2),
        ),
        label: RichText(
          text: TextSpan(
            text: widget.label?.replaceAll(' *', ''), // إزالة النجمة من النص الأساسي
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeightHelper.semiBold,
              color: Colors.black, // لون النص العادي
            ),
            children: [
              const WidgetSpan(child: SizedBox(width: 4)), // مسافة صغيرة بين النص والنجمة
              TextSpan(
                text: '*',
                style: Styles.textStyle14.copyWith(
                  color: starColor, // لون النجمة متغير حسب الإدخال
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
