import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/home_view.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/search_view.dart';

class AppRouter {
  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());

      case Routes.search:
        return MaterialPageRoute(builder: (_) => const SearchView());

      default:
        return null;
    }
  }
}
