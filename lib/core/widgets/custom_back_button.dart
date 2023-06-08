import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../manager/colors_manager.dart';


class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 44.w,
                    height: 44.w,
                    decoration: BoxDecoration(
                        color: ColorManager.white, shape: BoxShape.circle),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: ColorManager.black,
                    ),
                  ),
                ),
    );
  }
}