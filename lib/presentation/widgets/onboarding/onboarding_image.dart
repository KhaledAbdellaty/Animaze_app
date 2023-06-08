import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  final String image;
  const OnboardingImage({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) => AnimatedScale(
        scale: value,
        duration: const Duration(milliseconds: 200),
        child: child,
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
