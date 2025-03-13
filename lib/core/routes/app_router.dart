import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';
import 'routes.dart';


class AppRouter {
  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.checkOut:
        return MaterialPageRoute(builder: (_) => const CheckOutView());
      case Routes.checkOutSuccess:
        return MaterialPageRoute(builder: (_) => CheckOutSuccessView());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.discover:
        return MaterialPageRoute(builder: (_) => const DiscoverView());
      case Routes.orderInfo:
        return MaterialPageRoute(builder: (_) => const OrderInfoView());
      case Routes.orderRate:
        return MaterialPageRoute(builder: (_) => const OrderRateView());
      case Routes.orderTracking:
        return MaterialPageRoute(builder: (_) => const OrderTrackingView());
      case Routes.setting:
        return MaterialPageRoute(builder: (_) => const SettingView());
      case Routes.search:
        return MaterialPageRoute(
          builder: (_) => const SearchView(),
        );
      case Routes.productFull:
        return MaterialPageRoute(builder: (_) => const ProductFullView());

      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.myOrder:
        return MaterialPageRoute(builder: (_) => const MyOrderView());
      case Routes.dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardView());

      case Routes.cart:
        return MaterialPageRoute(builder: (_) => const CartView());

      case Routes.profile:
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case Routes.editProfile:
        return MaterialPageRoute(builder: (_) => const EditProfileView());

      case Routes.wishListBoard:
        return MaterialPageRoute(builder: (_) => const MyWishlistBoardView());

      case Routes.wishListItems:
        return MaterialPageRoute(
            builder: (_) => const MyWishlistAllItemsView());

      case Routes.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeView());

      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.update:
        return MaterialPageRoute(builder: (_) => const UpdateView());

      default:
        return null;
    }
  }
}
