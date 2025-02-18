import 'package:flutter/material.dart';

class CustomLoginTextField extends StatefulWidget {
  const CustomLoginTextField({
    super.key,
    required this.label,
    this.isPassword = false,
    this.icon,
    required this.controller,
    this.validator,
  });

  final String label;
  final bool isPassword;
  final IconData? icon;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<CustomLoginTextField> createState() => _CustomLoginTextFieldState();
}

class _CustomLoginTextFieldState extends State<CustomLoginTextField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword ? _isObscured : false,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
            : (widget.icon != null ? Icon(widget.icon, color: Colors.grey) : null),
        labelText: widget.label,
        border: const UnderlineInputBorder(),
      ),
      validator: widget.validator,
    );
  }
}
