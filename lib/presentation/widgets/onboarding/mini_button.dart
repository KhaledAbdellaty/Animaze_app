import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiniButton extends StatelessWidget {
  final bool visible;
  final double? rightPosition;
  final double? leftPosition;
  final double? topPosition;
  final double? bottomPosition;
  final void Function()? onPressed;
  final String text;
  const MiniButton({
    super.key,
    required this.visible,
    required this.onPressed,
    required this.text,
    this.bottomPosition,
    this.leftPosition,
    this.rightPosition,
    this.topPosition,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: visible,
        child: Positioned(
          right: rightPosition,
          top: topPosition,
          left: leftPosition,
          bottom: bottomPosition,
          child: Container(
            width: 72.w,
            height: 31.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.black.withOpacity(0.5)),
            alignment: Alignment.center,
            child: TextButton(
              onPressed: onPressed,
              child:  Text(text,
                  style:const TextStyle(color: Colors.white)),
            ),
          ),
        ));
  }
}
