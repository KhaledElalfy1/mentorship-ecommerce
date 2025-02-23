import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'ecommerce_app.dart';
void main() {
  runApp(
    DevicePreview(
    builder: (context) {
      return const EcommerceApp();
    }
  ));
}

