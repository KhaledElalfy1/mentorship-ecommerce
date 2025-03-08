import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'ecommerce_app.dart';
import 'firebase_options_prod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const EcommerceApp());
}
