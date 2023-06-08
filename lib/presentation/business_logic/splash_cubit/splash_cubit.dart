import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/core/manager/route_manager.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  moveSplashAway(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.pushNamed(context, MyRoute.onBoardingScreen),
    );
  }
}
