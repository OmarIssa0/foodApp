import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/locale/app_localization.dart';

import '../../../../../core/constant/styles_app.dart';

class SignInWithWidgets extends StatelessWidget {
  const SignInWithWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 80.w,
          height: 1,
          color: Colors.white.withOpacity(0.5),
        ),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 17.r),
          child: Text(
            "signInWith".tr(context),
            style: Styles.textStyle16.copyWith(color: Colors.white, height: 0),
          ),
        ),
        Container(
          width: 80.w,
          height: 1,
          color: Colors.white.withOpacity(0.5),
        ),
      ],
    );
  }
}
