import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';

class AppRouter {
  Route? generateRouter(RouteSettings settings) {

    switch(settings.name){
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      
      default:
        return null;
    }
  }
}