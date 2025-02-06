import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/routes/app_router.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily:kProductSans,
      ),
      initialRoute: Routes.home,
      onGenerateRoute: AppRouter().generateRouter,
    );
  }
}