import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/manager/colors_manager.dart';

class OtpField extends StatelessWidget {
  final List<String> code;
  const OtpField({Key? key, required this.code}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorManager.white, borderRadius: BorderRadius.circular(12)),
      width: 68.w,
      height: 56.h,
      child: Center(
        child: TextFormField(
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          cursorColor: ColorManager.primary,
          style: TextStyle(color: ColorManager.black),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: const InputDecoration(
              focusedBorder: InputBorder.none, border: InputBorder.none),
          onChanged: (value) {
            code.add(value);
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}
