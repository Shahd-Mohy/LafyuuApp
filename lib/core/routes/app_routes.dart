import 'package:go_router/go_router.dart';
import 'package:lafayuu_app/features/authentication/forgot_password/presentation/view/forgot_password_view.dart';
import 'package:lafayuu_app/features/authentication/login/presentation/view/login_view.dart';
import 'package:lafayuu_app/features/authentication/onboarding/presentation/view/onboarding_view.dart';
import 'package:lafayuu_app/features/authentication/register/presentation/view/register_view.dart';
import 'package:lafayuu_app/features/shop/home/presentation/view/home_view.dart';
import 'package:lafayuu_app/features/shop/offer/presentation/view/offer_view.dart';
import 'package:lafayuu_app/features/shop/product_details/presentation/view/product_details_view.dart';

abstract class AppRouter {
  static const kOnboardingView = '/';
  static const kLoginView = '/login';
  static const kRegisterView = '/register';
  static const kForgotPasswordView = '/forgot-password';
  static const kHomeView = '/home';
  static const kOfferView = '/offer';
  static const kProductDetailsView = '/product-details';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(path: kLoginView, builder: (context, state) => const LoginView()),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kForgotPasswordView,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path: kOfferView, builder: (context, state) => const OfferView()),
      GoRoute(
        path: kProductDetailsView,
        builder: (context, state) => const ProductDetailsView(),
      ),
    ],
  );
}
