import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/helper/spacing.dart';

class ShippingForm extends StatelessWidget {
  final Map<String, TextEditingController> controllers;
  final String? Function(String?) validator;

  const ShippingForm({
    super.key,
    required this.controllers,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(right: 45),
      child: Column(
        children: controllers.keys.map((label) {
          return Column(
            children: [
              CustomTextField(
                label: label,
                controller: controllers[label]!,
                suffixIcon: label == 'Country '
                    ? const Icon(Icons.keyboard_arrow_down, color: Colors.black)
                    : null, 
                validator: validator,
              ),
              verticalSpace(20),
            ],
          );
        }).toList(),
      ),
    );
  }
}
