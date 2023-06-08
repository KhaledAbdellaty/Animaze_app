import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/extenstions.dart';
import 'package:movie_app/core/manager/colors_manager.dart';
import 'package:movie_app/core/manager/route_manager.dart';
import 'package:movie_app/core/manager/string_manager.dart';
import 'package:movie_app/core/widgets/auth_header.dart';
import 'package:movie_app/core/widgets/credential_input_field.dart';
import 'package:movie_app/core/widgets/custom_back_button.dart';
import 'package:movie_app/core/widgets/custom_button.dart';

import '../business_logic/auth_cubit/auth_cubit.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = AuthCubit.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 24.w),
          child: ListView(
            children: [
              const CustomBackButton(),
              56.h.emptyHeight,
              const AuthHeader(
                authHeaderStatus: AuthHeaderStatus.forgetPassword,
              ),
              56.h.emptyHeight,
              CredenialInputField(
                controller: authCubit.emailController,
                credentialInput: CredentialInput.email,
              ),
              40.h.emptyHeight,
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  return CustomButton(
                      margin: 0.p,
                      onPressed: () => Navigator.pushNamed(
                          context, MyRoute.otpVerificationScreen),
                      switcherCondition: true,
                      firstChild: const Text(StringsManager.send),
                      secondChild: const CircularProgressIndicator());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
