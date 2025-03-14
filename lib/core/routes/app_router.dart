import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/core/functions/firebase_analytics_log_event.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';
import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';
import 'package:mentorship_ecommerce/features/login/data/repo/login_repo_implementation.dart';
import 'package:mentorship_ecommerce/features/login/presentation/manager/login_cubit.dart';

class AppRouter {
  Route? generateRouter(RouteSettings settings) {
    firebaseAnalyticsLogEvent(
      firebaseAnalyticsEventModel: FirebaseAnalyticsEventModel(
        parameters: {
          'screen_name': settings.name ?? 'no route',
          'action': 'User navigated to ${settings.name}',
        },
      ),
    );

    switch (settings.name) {
      case Routes.checkOut:
        return MaterialPageRoute(builder: (_) => const CheckOutView());
      case Routes.checkOutSuccess:
        return MaterialPageRoute(builder: (_) => const CheckOutSuccessView());
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
        return MaterialPageRoute(builder: (_) => const SearchView());
      case Routes.productFull:
        return MaterialPageRoute(builder: (_) => const ProductFullView());
       case Routes.login:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => LoginCubit(UserAuthRepoImplementaion()),
                child: const LoginScreen()));
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
