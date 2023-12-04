import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/constant/image_app.dart';
import 'package:food_app/core/locale/app_localization.dart';
import 'package:food_app/features/welcome/presentation/view/widgets/alerady_have_account.dart';
import 'package:food_app/features/welcome/presentation/view/widgets/button_welcome_view.dart';
import 'package:food_app/features/welcome/presentation/view/widgets/signIn_with_widgets.dart';
import 'package:food_app/features/welcome/presentation/view/widgets/text_welcome_view.dart';

import '../../../../../core/utils/widgets/dropdown_button_local.dart';
import '../../../../auth/presentation/view/login_view.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AppImage.kWelcomeView),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 45.h),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 25.r),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: DropdownButtonLocal(),
                      )),
                ],
              ),
            ),
            // const ButtonSkipWelcomeView(),
            SizedBox(height: 100.h),
            const TextWelcomeView(),
            SizedBox(height: 145.h),
            // const Spacer(flex: 1),
            SignInWithWidgets(
              color: Colors.white.withOpacity(0.5),
              colorFont: Colors.white,
              fontSize: 16.sp,
            ),
            const ButtonWelcomeView(),
            SizedBox(height: 24.h),
            AlreadyHavAnAccount(
                function: () {
                  Navigator.of(context).pushNamed(LoginView.id);
                },
                name: "AlreadyHaveAnAccount?".tr(context),
                nameButton: "SignIn".tr(context),
                colorName: Colors.white,
                colorNameButton: Colors.white),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
