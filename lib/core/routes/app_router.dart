import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';
import 'package:mentorship_ecommerce/features/cart/presentation/views/cart_view.dart';
import 'package:mentorship_ecommerce/features/discover/presentation/view/discover_view.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/dashboard_view.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/home_view.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/product_full_view.dart';
import 'package:mentorship_ecommerce/features/search/presentation/logic/search_cubit/search_cubit.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/search_view.dart';

class AppRouter {
  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.discover:
        return MaterialPageRoute(builder: (_) => const DiscoverView());

      case Routes.search:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SearchCubit(),
            child: const SearchView(),
          ),
        );
      case Routes.productFull:
        return MaterialPageRoute(builder: (_) => const ProductFullView());
      case Routes.dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardView());

      case Routes.cart:
        return MaterialPageRoute(builder: (_) => const CartView());

      default:
        return null;
    }
  }
}
