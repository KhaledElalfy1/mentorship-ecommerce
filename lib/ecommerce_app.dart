import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/routes/app_router.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';

import 'core/utils/app_color.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          cardColor: AppColor.whiteColor,
          fontFamily: Constants.productSans,
          useMaterial3: false,
        ),

        initialRoute: Routes.productFull,

       
        onGenerateRoute: AppRouter().generateRouter,
      ),
    );
  }
}
