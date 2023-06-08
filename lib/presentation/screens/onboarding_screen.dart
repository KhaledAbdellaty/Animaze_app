import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/extenstions.dart';
import 'package:movie_app/core/widgets/custom_button.dart';
import 'package:movie_app/presentation/business_logic/onboarding_cubit/onboarding_cubit.dart';
import '../../core/manager/route_manager.dart';
import '../../core/manager/string_manager.dart';
import '../widgets/onboarding/dots_indicator.dart';
import '../widgets/onboarding/onboarding_page_builder.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  OnboardingCubit onboardingCubit = OnboardingCubit();
  @override
  void dispose() {
    onboardingCubit.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = OnboardingCubit.of(context);
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<OnboardingCubit, OnboardingState>(
          builder: (context, state) {
            return Column(
              children: [
                OnBoardingPageBuilder(cubit: cubit),
                DotsIndicator(cubit: cubit),
                48.h.emptyHeight,
                CustomButton(
                  onPressed: cubit.currentIndex == 2
                      ? () => cubit.navigate(context)
                      : () => cubit.changeIndex(cubit.currentIndex++),
                  switcherCondition: cubit.currentIndex < 2,
                  firstChild: const Text(StringsManager.next),
                  secondChild: const Text(StringsManager.getStarted),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
