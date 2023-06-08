import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/manager/assets_manager.dart';
import 'package:movie_app/core/manager/route_manager.dart';

import '../../../core/manager/string_manager.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());
  static OnboardingCubit of(BuildContext context) => BlocProvider.of(context);
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  final Map<String, Map<String, String>> onboardingContent = {
    AssetsManager.onboarding1: {
      'headline': StringsManager.onboarding1Headline,
      'title': StringsManager.onboarding1Title,
      'subtitle': StringsManager.onboarding1SubTitle,
    },
    AssetsManager.onboarding2: {
      'headline': StringsManager.onboarding2Headline,
      'title': StringsManager.onboarding2Title,
      'subtitle': StringsManager.onboarding2SubTitle,
    },
    AssetsManager.onboarding3: {
      'headline': StringsManager.onboarding3Headline,
      'title': StringsManager.onboarding3Title,
      'subtitle': StringsManager.onboarding3SubTitle,
    },
  };

  changeIndex(int index) {
    currentIndex == index;
    pageController.animateToPage(currentIndex,
        duration: const Duration(milliseconds: 200), curve: Curves.bounceInOut);
    emit(OnboardingInitial());
  }

  navigate(BuildContext context) {
    Navigator.pushNamed(context, MyRoute.signInScreen);
  }

  skipOnboarding() {
    currentIndex = 2;
    pageController.animateToPage(currentIndex,
        duration: const Duration(milliseconds: 200), curve: Curves.bounceInOut);

    emit(OnboardingInitial());
  }

  backOnboarding() {
    currentIndex--;
    pageController.animateToPage(currentIndex,
        duration: const Duration(milliseconds: 200), curve: Curves.bounceInOut);

    emit(OnboardingInitial());
  }
}
