import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/extenstions.dart';
import 'package:movie_app/core/manager/colors_manager.dart';
import 'package:movie_app/core/manager/fonts_manager.dart';
import 'package:movie_app/core/manager/route_manager.dart';
import 'package:movie_app/core/manager/string_manager.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              SizedBox(
                width: 18.w,
                height: 18.w,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
                  side: BorderSide(color: ColorManager.white),
                  activeColor: ColorManager.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              8.w.emptyWidth,
              Text(
                StringsManager.rememberMe,
                style: TextStyle(
                    color: ColorManager.white, fontSize: FontsManager.s12),
              )
            ],
          ),
        ),
        SizedBox(
          width: 106.w,
          child: InkWell(
            onTap: () =>
                Navigator.pushNamed(context, MyRoute.forgetPasswordScreen),
            child: Text(
              StringsManager.forgetPassword,
              style: TextStyle(
                  color: ColorManager.primary, fontSize: FontsManager.s12),
            ),
          ),
        ),
      ],
    );
  }
}
