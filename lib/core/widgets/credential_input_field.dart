import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/extenstions.dart';
import 'package:movie_app/core/manager/assets_manager.dart';
import 'package:movie_app/core/manager/colors_manager.dart';
import 'package:movie_app/core/manager/fonts_manager.dart';
import 'package:movie_app/core/manager/string_manager.dart';

import '../../presentation/business_logic/auth_cubit/auth_cubit.dart';

enum CredentialInput {
  email,
  userName,
  password,
}

class CredenialInputField extends StatelessWidget {
  final CredentialInput credentialInput;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final void Function()? showPassord;
  final String hintMessage;
  const CredenialInputField({
    super.key,
    this.credentialInput = CredentialInput.userName,
    required this.controller,
    this.onChanged,
    this.showPassord,
    this.hintMessage = '',
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: context.width,
              height: 56.h,
              padding: 18.psh,
              decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      width: 1,
                      color: state is AuthValiding
                          ? ColorManager.primary
                          : Colors.transparent)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    credentialInput == CredentialInput.email
                        ? AssetsManager.email
                        : credentialInput == CredentialInput.password
                            ? AssetsManager.password
                            : AssetsManager.userName,
                  ),
                  11.w.emptyWidth,
                  Expanded(
                    child: TextFormField(
                      obscureText: credentialInput == CredentialInput.password
                          ? AuthCubit.of(context).passScure
                          : false,
                      cursorColor: ColorManager.primary,
                      keyboardType: credentialInput == CredentialInput.email
                          ? TextInputType.emailAddress
                          : TextInputType.name,
                      style: TextStyle(
                          color: ColorManager.black,
                          fontSize: FontsManager.s16),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          helperStyle: TextStyle(
                              fontSize: 14.sp,
                              color: ColorManager.grey,
                              fontWeight: FontWeight.w400),
                          hintText: hintMessage.isEmpty
                              ? credentialInput == CredentialInput.email
                                  ? StringsManager.email
                                  : credentialInput == CredentialInput.password
                                      ? StringsManager.password
                                      : StringsManager.userName
                              : hintMessage),
                      controller: controller,
                      onChanged: onChanged,
                    ),
                  ),
                  11.w.emptyWidth,
                  Visibility(
                      visible: credentialInput == CredentialInput.password,
                      child: InkWell(
                          onTap: showPassord,
                          child: Image.asset(AssetsManager.visible)))
                ],
              ),
            ),
            5.h.emptyHeight,
            credentialInput == CredentialInput.email
                ? Visibility(
                    visible: state is ValidingEmail && state is! ValidEmail,
                    child: const Text(
                      "Invalid email",
                      style: TextStyle(color: Colors.red),
                    ))
                : credentialInput == CredentialInput.userName
                    ? Visibility(
                        visible: state is ValidingUserName &&
                            state is! ValidUserName,
                        child: const Text(
                          "username must be at least 8 characters",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.red),
                        ))
                    : Visibility(
                        visible: state is ValidingPassword &&
                            state is! ValidPassword,
                        child: const Text(
                          "password must be at least 8 characters",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.red),
                        )),
          ],
        );
      },
    );
  }
}
