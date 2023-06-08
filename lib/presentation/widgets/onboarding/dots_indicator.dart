
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/manager/colors_manager.dart';
import '../../business_logic/onboarding_cubit/onboarding_cubit.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.cubit,
  });

  final OnboardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        3,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 7,
          width: cubit.currentIndex == index ? 37.w : 13.w,
          child: Container(
            margin: EdgeInsets.only(right: 5.w),
            decoration: BoxDecoration(
                color: ColorManager.primary,
                borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ),
    );
  }
}
