import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/extenstions.dart';
import 'package:movie_app/core/manager/colors_manager.dart';
import 'package:movie_app/core/manager/fonts_manager.dart';

import 'otp_field.dart';

class OtpCodeWidget extends StatelessWidget {
  final List<String> code;
  const OtpCodeWidget({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'OTP Code',
          textAlign: TextAlign.start,
          style: TextStyle(
              color: ColorManager.white,
              fontSize: FontsManager.s16,
              fontWeight: FontWeight.w500),
        ),
        18.h.emptyHeight,
        Wrap(
          alignment: WrapAlignment.end,
          runAlignment: WrapAlignment.end,
          textDirection: TextDirection.ltr,
          spacing: 17.57.w,
          children: List.generate(
              4,
              (index) => OtpField(
                    code: code,
                  )),
        ),
      ],
    );
  }
}
