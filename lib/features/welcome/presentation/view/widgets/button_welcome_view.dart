import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/locale/app_localization.dart';

import '../../../../../core/constant/styles_app.dart';

class ButtonWelcomeView extends StatelessWidget {
  const ButtonWelcomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40.r, right: 40.r, top: 26.r),
      child: Column(
        children: [
          MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27.r)),
            height: 54.h,
            color: Colors.white,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/images/Google.svg"),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "SignInWithGoogle".tr(context),
                  style:
                      Styles.textStyle12.copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 23.h,
          ),
          Container(
            width: double.infinity,
            height: 54.h,
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.20999999344348907),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Center(
              child: Text(
                "StartWithEmailOrPhone".tr(context),
                style: TextStyle(fontSize: 15.sp, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
