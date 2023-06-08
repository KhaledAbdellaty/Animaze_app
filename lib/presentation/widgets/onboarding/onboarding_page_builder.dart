import 'package:flutter/material.dart';

import '../../business_logic/onboarding_cubit/onboarding_cubit.dart';
import 'onboarding_body.dart';


class OnBoardingPageBuilder extends StatelessWidget {
  const OnBoardingPageBuilder({
    super.key,
    required this.cubit,
  });

  final OnboardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: cubit.onboardingContent.length,
        controller: cubit.pageController,
        onPageChanged: (index) {
          cubit.changeIndex(index);
        },
        itemBuilder: (context, index) {
          return const OnboardingBody();
        },
      ),
    );
  }
}
