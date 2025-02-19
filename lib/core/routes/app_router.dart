import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';
import 'package:mentorship_ecommerce/features/cart/presentation/views/cart_view.dart';
import 'package:mentorship_ecommerce/features/check_out/views/check_out_success_view.dart';
import 'package:mentorship_ecommerce/features/discover/presentation/view/discover_view.dart';
import 'package:mentorship_ecommerce/features/edit_profile/presentation/views/edit_profile_view.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/dashboard_view.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/home_view.dart';
import 'package:mentorship_ecommerce/features/login/views/login_screen.dart';
import 'package:mentorship_ecommerce/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:mentorship_ecommerce/features/onboarding/presentation/views/welcome_view.dart';
import 'package:mentorship_ecommerce/features/order_info/presentation/view/order_info_view.dart';
import 'package:mentorship_ecommerce/features/order_rate/presentation/view/order_rate_view.dart';
import 'package:mentorship_ecommerce/features/order_tracking/presentation/view/order_tracking_view.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/product_full_view.dart';
import 'package:mentorship_ecommerce/features/profile/presentation/views/profile_view.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/search_view.dart';
import 'package:mentorship_ecommerce/features/setting/presentation/view/setting_view.dart';
import 'package:mentorship_ecommerce/features/wishing_list/presentation/views/my_wishlist_all_items_views.dart';
import 'package:mentorship_ecommerce/features/wishing_list/presentation/views/my_wishlist_board_view.dart';

import '../../features/check_out/views/check_out_view.dart';
import '../../features/my_order/views/my_order_view.dart';

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
        return MaterialPageRoute(builder: (_) => const MyWishlistAllItemsView());

      case Routes.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeView());

      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingView());

      default:
        return null;
    }
  }
}
