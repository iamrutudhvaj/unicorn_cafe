import 'package:flutter/material.dart';
import 'package:unicorn_cafe/src/features/auth/googlelogin/google_login_screen.dart';
import 'package:unicorn_cafe/src/features/auth/login/login_screen.dart';
import 'package:unicorn_cafe/src/features/auth/register/register_screen.dart';
import 'package:unicorn_cafe/src/features/home/home_screen.dart';
import 'package:unicorn_cafe/src/features/onbording/onboarding_screen.dart';
import 'package:unicorn_cafe/src/features/product/product_screen.dart';
import 'package:unicorn_cafe/src/features/product_description/product_description_screen.dart';
import 'package:unicorn_cafe/src/features/splash/splash_screen.dart';
import 'package:unicorn_cafe/src/model/product_model.dart';

part 'app_route.dart';

abstract class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case AppRoute.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case AppRoute.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case AppRoute.registerScreen:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case AppRoute.googlelogin:
        return MaterialPageRoute(
          builder: (context) => const GoogleLoginScreen(),
        );
      case AppRoute.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case AppRoute.productScreen:
        return MaterialPageRoute(
          builder: (context) => const ProductScreen(),
        );
      case AppRoute.productDescriptionScreen:
        final ProductModel productModel = settings.arguments as ProductModel;
        return MaterialPageRoute(
          builder: (context) => ProductDescriprionScreen(productModel: productModel),
        );
      default:
        return null;
    }
  }
}
