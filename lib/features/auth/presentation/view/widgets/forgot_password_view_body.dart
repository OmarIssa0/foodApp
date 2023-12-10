import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/constant/styles_app.dart';
import 'package:food_app/core/locale/app_localization.dart';
import 'package:food_app/features/auth/presentation/view/widgets/text_filed_forgotPassword.dart';

import 'custom_icon_button_arrow.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 26.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 37.h),
            const CustomIconButtonBack(),
            SizedBox(height: 105.h),
            Text("Resset Password".tr(context), style: Styles.textStyle36),
            SizedBox(height: 14.h),
            Text(
              "Please enter your email address to request a password reset"
                  .tr(context),
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF9796A1),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 48.h),
            const TextFiledForgotPassword(),
          ],
        ),
      ),
    );
  }
}
