import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/extenstions.dart';
import 'package:movie_app/core/manager/assets_manager.dart';

import '../business_logic/splash_cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SplashCubit, SplashState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                301.h.emptyHeight,
                Image.asset(
                  AssetsManager.logo,
                  width: 231.w,
                ),
                301.h.emptyHeight,
                Image.asset(
                  AssetsManager.loading,
                  width: 150.w,
                  height: 90.h,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
