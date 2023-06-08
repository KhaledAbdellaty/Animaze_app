import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/extenstions.dart';
import 'package:movie_app/core/manager/route_manager.dart';

import '../../presentation/widgets/auth/social_signin_button.dart';
import '../manager/assets_manager.dart';
import '../manager/colors_manager.dart';
import '../manager/fonts_manager.dart';
import '../manager/string_manager.dart';

enum AuthFooterStatus {
  signIn,
  signUp,
}

class AuthFooter extends StatelessWidget {
  final AuthFooterStatus authFooterStatus;
  const AuthFooter({super.key, required this.authFooterStatus});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 1.h,
              width: 94.w,
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            20.w.emptyWidth,
            Text(
              authFooterStatus == AuthFooterStatus.signIn
                  ? StringsManager.orSignInWith
                  : StringsManager.orConnectInWith,
              style: TextStyle(
                  color: ColorManager.white,
                  fontSize: FontsManager.s14,
                  fontWeight: FontWeight.w600),
            ),
            20.w.emptyWidth,
            Container(
              height: 1.h,
              width: 94.w,
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
        32.h.emptyHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialSignInButton(
              onPressed: () {},
              icon: AssetsManager.google,
            ),
            16.w.emptyWidth,
            SocialSignInButton(
              onPressed: () {},
              icon: AssetsManager.apple,
            ),
            16.w.emptyWidth,
            SocialSignInButton(
              onPressed: () {},
              icon: AssetsManager.facebook,
            ),
          ],
        ),
        24.h.emptyHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              authFooterStatus == AuthFooterStatus.signIn
                  ? StringsManager.dontHaveAccount
                  : StringsManager.alreadyHaveAccount,
              style: TextStyle(
                  fontSize: FontsManager.s14, color: ColorManager.white),
            ),
            5.w.emptyWidth,
            InkWell(
              onTap: authFooterStatus == AuthFooterStatus.signIn
                  ? () => Navigator.pushNamed(context, MyRoute.signUpScreen)
                  : () => Navigator.pushNamed(context, MyRoute.signInScreen),
              child: Text(
                  authFooterStatus == AuthFooterStatus.signIn
                      ? StringsManager.signUp
                      : StringsManager.signIn,
                  style: TextStyle(
                      fontSize: FontsManager.s14, color: ColorManager.primary)),
            ),
          ],
        )
      ],
    );
  }
}
