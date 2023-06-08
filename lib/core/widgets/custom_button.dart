import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final bool switcherCondition;
  final Widget firstChild;
  final Widget secondChild;
  final EdgeInsetsGeometry? margin;
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.switcherCondition,
      required this.firstChild,
      required this.secondChild,
      this.margin = const EdgeInsets.only(left: 25, right: 25, bottom: 41)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin:margin ,
      height: 56.h,
      child: ElevatedButton(
        onPressed: onPressed,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: switcherCondition ? firstChild : secondChild,
        ),
      ),
    );
  }
}
