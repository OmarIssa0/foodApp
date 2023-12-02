import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/constant/color_app.dart';
import 'package:food_app/core/constant/styles_app.dart';
import 'package:food_app/core/locale/app_localization.dart';
import 'package:food_app/features/welcome/presentation/view/widgets/signIn_with_widgets.dart';
import 'package:food_app/features/welcome/presentation/view/widgets/text_welcome_view.dart';

import '../../../../../core/constant/image_app.dart';
import '../../../../../core/utils/widgets/dropdown_button_local.dart';
import 'button_welcome_view.dart';

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
      child: Column(
        children: [
          SizedBox(
            height: 45.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 55,
                height: 32,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27.41),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3FD3D1D8),
                      blurRadius: 35.75,
                      offset: Offset(17.87, 17.87),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    "Skip".tr(context),
                    style: Styles.textStyle15
                        .copyWith(color: AppColor.kOrange, fontSize: 13.sp),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 125.h,
          ),
          const TextWelcomeView(),
          const DropdownButtonLocal(),
          const Spacer(
            flex: 1,
          ),
          const SignInWithWidgets(),
          const ButtonWelcomeView(),
          SizedBox(
            height: 24.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "AlreadyHaveAnAccount?".tr(context),
                style: Styles.textStyle16
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "SignIn".tr(context),
                style: Styles.textStyle16.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
        ],
      ),
    );
  }
}
