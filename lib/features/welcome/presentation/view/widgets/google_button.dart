import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/locale/app_localization.dart';

import '../../../../../core/constant/styles_app.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(27.r)),
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
            style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
