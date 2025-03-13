import 'package:flutter/material.dart';
import '../../features/check_out/views/widgets/custom_rich_text.dart';
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
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    // مراقبة متى يتم التركيز أو فقدان التركيز على الحقل
    _focusNode.addListener(() {
      setState(() {
        starColor = _focusNode.hasFocus ? Colors.red : Colors.green;
      });
    });
  }
  @override
  void dispose() {
    widget.controller?.dispose(); // التأكد من أن controller غير null قبل استدعاء dispose
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: _focusNode,
      validator: (value) {
        setState(() {
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
        label: CustomRichText(widget: widget, starColor: starColor),
      ),
    );
  }
}
