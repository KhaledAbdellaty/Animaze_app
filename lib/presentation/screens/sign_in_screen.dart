import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/extenstions.dart';
import 'package:movie_app/core/manager/colors_manager.dart';
import 'package:movie_app/core/manager/string_manager.dart';
import 'package:movie_app/core/widgets/auth_footer.dart';
import 'package:movie_app/core/widgets/auth_header.dart';
import 'package:movie_app/core/widgets/credential_input_field.dart';
import 'package:movie_app/core/widgets/custom_button.dart';
import 'package:movie_app/presentation/widgets/auth/remember_me.dart';

import '../business_logic/auth_cubit/auth_cubit.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = AuthCubit.of(context);
    return Scaffold(
      body: Padding(
        padding: 24.w.psh,
        child: ListView(
          shrinkWrap: true,
          children: [
            100.h.emptyHeight,
            const AuthHeader(
              authHeaderStatus: AuthHeaderStatus.signIn,
            ),
            CredenialInputField(
              credentialInput: CredentialInput.email,
              controller: authCubit.emailController,
              onChanged: (p0) => authCubit.startValdit(
                  credential: CredentialInput.email, value: p0),
            ),
            16.h.emptyHeight,
            CredenialInputField(
              credentialInput: CredentialInput.password,
              controller: authCubit.passwordController,
              onChanged: (p0) => authCubit.startValdit(
                  credential: CredentialInput.password, value: p0),
              showPassord: () => authCubit.showPassord(isLogin: true),
            ),
            16.h.emptyHeight,
            const RememberMe(),
            56.h.emptyHeight,
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return CustomButton(
                    margin: 0.p,
                    onPressed: state is AuthValiding
                        ? null
                        : () => AuthCubit.of(context)
                            .login('userName', 'password', context),
                    switcherCondition: state is! AuthLoading,
                    firstChild: const Text(StringsManager.signIn),
                    secondChild: CircularProgressIndicator(
                      color: ColorManager.black,
                    ));
              },
            ),
            24.h.emptyHeight,
            const AuthFooter(
              authFooterStatus: AuthFooterStatus.signIn,
            ),
          ],
        ),
      ),
    );
  }
}
