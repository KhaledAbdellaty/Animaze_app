
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/extenstions.dart';

import '../../../core/manager/assets_manager.dart';

class OnboardingContent extends StatelessWidget {
  final String headline, title, subTitle;
  const OnboardingContent({
    super.key,
    required this.headline,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) => AnimatedScale(
          scale: value,
          duration: const Duration(milliseconds: 200),
          child: child,
        ),
        child: Padding(
          padding: 24.w.psh,
          child: Column(
            children: [
              Text(
                headline,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Image.asset(
                AssetsManager.onboardingVector,
              ),
              25.h.emptyHeight,
              Text(
                subTitle,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              36.h.emptyHeight,
            ],
          ),
        ),
      ),
    );
  }
}
