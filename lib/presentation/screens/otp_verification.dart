import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/extenstions.dart';
import 'package:movie_app/core/manager/colors_manager.dart';
import 'package:movie_app/core/manager/fonts_manager.dart';
import 'package:movie_app/core/manager/route_manager.dart';
import 'package:movie_app/core/manager/string_manager.dart';
import 'package:movie_app/core/widgets/auth_header.dart';
import 'package:movie_app/core/widgets/custom_back_button.dart';
import 'package:movie_app/core/widgets/custom_button.dart';
import 'package:movie_app/presentation/widgets/otp_verification/otp_code_widget.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});

  final List<String> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 24.w),
          child: ListView(
            children: [
              const CustomBackButton(),
              56.h.emptyHeight,
              const AuthHeader(
                authHeaderStatus: AuthHeaderStatus.otpVerification,
              ),
              32.h.emptyHeight,
              OtpCodeWidget(code: list),
              40.h.emptyHeight,
              CustomButton(
                  margin: 0.p,
                  onPressed: () => Navigator.pushNamed(
                      context, MyRoute.createNewPasswordScreen),
                  switcherCondition: true,
                  firstChild: const Text(StringsManager.verify),
                  secondChild: const CircularProgressIndicator()),
              16.h.emptyHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringsManager.resendCodeTo,
                    style: TextStyle(
                      fontSize: FontsManager.s14,
                      color: ColorManager.white,
                    ),
                  ),
                  Text(
                    '01:26',
                    style: TextStyle(
                      fontSize: FontsManager.s14,
                      color: ColorManager.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
