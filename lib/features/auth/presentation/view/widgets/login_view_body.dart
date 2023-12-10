import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/constant/styles_app.dart';
import 'package:food_app/core/locale/app_localization.dart';
import 'package:food_app/features/auth/presentation/view/signup_view.dart';
import 'package:food_app/features/auth/presentation/view/widgets/custom_icon_button_arrow.dart';
import 'package:food_app/features/auth/presentation/view/widgets/text_filed_login.dart';

import '../../../../../core/constant/color_app.dart';
import '../../../../welcome/presentation/view/widgets/alerady_have_account.dart';
import '../../../../welcome/presentation/view/widgets/google_button.dart';
import '../../../../welcome/presentation/view/widgets/signIn_with_widgets.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
            Text(
              "Login".tr(context),
              style: Styles.textStyle36,
            ),
            SizedBox(height: 31.h),
            const TextFromFiledLogin(),
            SizedBox(height: 30.h),
            AlreadyHavAnAccount(
              function: () {
                Navigator.of(context).pushNamed(SignUpView.id);
              },
              name: "AlreadyHaveAnAccount?".tr(context),
              nameButton: "SignUp".tr(context),
              colorName: const Color(0xFF5B5B5E),
              colorNameButton: AppColor.kOrange,
            ),
            SizedBox(height: 50.h),
            SignInWithWidgets(
              color: const Color(0x7FB3B3B3),
              colorFont: const Color(0xFF5B5B5E),
              fontSize: 14.sp,
            ),
            SizedBox(height: 25.h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: GoogleButton(),
            ),
            SizedBox(width: 10.w),
          ],
        ),
      ),
    );
  }
}
