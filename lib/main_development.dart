import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/ecommerce_app.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(
    DevicePreview(
    builder: (context) {
      return const EcommerceApp();
    }
  ));
}
