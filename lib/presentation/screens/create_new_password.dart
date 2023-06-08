import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/extenstions.dart';
import 'package:movie_app/core/manager/string_manager.dart';
import 'package:movie_app/core/widgets/auth_header.dart';
import 'package:movie_app/core/widgets/credential_input_field.dart';
import 'package:movie_app/core/widgets/custom_back_button.dart';
import 'package:movie_app/core/widgets/custom_button.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 24.w),
        child: ListView(
          shrinkWrap: true,
          children: [
            const CustomBackButton(),
            56.h.emptyHeight,
            const AuthHeader(
                authHeaderStatus: AuthHeaderStatus.createNewPasword),
            56.h.emptyHeight,
            CredenialInputField(
                hintMessage: StringsManager.enterNewPassword,
                credentialInput: CredentialInput.password,
                controller: TextEditingController()),
            16.h.emptyHeight,
            CredenialInputField(
                hintMessage: StringsManager.confirmPassword,
                credentialInput: CredentialInput.password,
                controller: TextEditingController()),
            40.h.emptyHeight,
            CustomButton(
                margin: 0.p,
                onPressed: () {},
                switcherCondition: true,
                firstChild: const Text(StringsManager.resetPassword),
                secondChild: const CircularProgressIndicator())
          ],
        ),
      ),
    );
  }
}
