import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/locale/app_localization.dart';

import '../../../../../core/constant/styles_app.dart';

class SignInWithWidgets extends StatelessWidget {
  const SignInWithWidgets({
    super.key,
    required this.color,
    required this.colorFont,
    required this.fontSize,
  });

  final Color color;
  final Color colorFont;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: 80.w, height: 1, color: color),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 17.r),
          child: Text(
            "signInWith".tr(context),
            style: Styles.textStyle16
                .copyWith(color: colorFont, height: 0, fontSize: fontSize),
          ),
        ),
        Container(width: 80.w, height: 1, color: color),
      ],
    );
  }
}
