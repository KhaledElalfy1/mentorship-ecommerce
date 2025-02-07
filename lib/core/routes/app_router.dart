import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/product_full_view.dart';

class AppRouter {
  Route? generateRouter(RouteSettings settings) {

    switch(settings.name){
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const Scaffold());

         case Routes.productFull:
        return MaterialPageRoute(builder: (_) => const ProductFullView());
      
      default:
        return null;

        
    }
  }
}