import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/presentation/business_logic/auth_cubit/auth_cubit.dart';
import 'package:movie_app/presentation/business_logic/onboarding_cubit/onboarding_cubit.dart';
import 'package:movie_app/presentation/screens/create_new_password.dart';
import 'package:movie_app/presentation/screens/forget_passwors_screen.dart';
import 'package:movie_app/presentation/screens/onboarding_screen.dart';
import 'package:movie_app/presentation/screens/sign_in_screen.dart';
import 'package:movie_app/presentation/screens/splash_screen.dart';

import '../../presentation/business_logic/splash_cubit/splash_cubit.dart';
import '../../presentation/screens/otp_verification.dart';
import '../../presentation/screens/sign_up_screen.dart';

class RouteManager {
  RouteManager._();
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case MyRoute.splashScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SplashCubit()..moveSplashAway(context),
            child: const SplashScreen(),
          ),
        );
      case MyRoute.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => OnboardingCubit(),
            child: const OnBoardingScreen(),
          ),
        );
      case MyRoute.signInScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignInScreen(),
          ),
        );
      case MyRoute.signUpScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignUpScreen(),
          ),
        );
      case MyRoute.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const ForgetPasswordScreen(),
          ),
        );
        case MyRoute.otpVerificationScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child:  OtpVerificationScreen(),
          ),
        );
          case MyRoute.createNewPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child:  const CreateNewPasswordScreen(),
          ),
        );
    }
  }
}

class MyRoute {
  static const String splashScreen = '/';
  static const String onBoardingScreen = '/on_boarding';
  static const String signInScreen = '/login';
  static const String signUpScreen = '/sign_up';
  static const String forgetPasswordScreen = '/forget_password';
  static const String otpVerificationScreen = '/otp_verification';
  static const String createNewPasswordScreen = '/create_new_password';
}
