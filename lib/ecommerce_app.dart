import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/helper/font_family_helper.dart';
import 'package:mentorship_ecommerce/generated/l10n.dart';

import 'core/routes/app_router.dart';
import 'core/routes/routes.dart';
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
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale('en'),
        theme: ThemeData(
          scaffoldBackgroundColor: AppColor.whiteColor,
          cardColor: AppColor.whiteColor,
          fontFamily: FontFamilyHelper.productSans,
        ),
        initialRoute: Routes.welcome,
        onGenerateRoute: AppRouter().generateRouter,
      ),
    );
  }
}
