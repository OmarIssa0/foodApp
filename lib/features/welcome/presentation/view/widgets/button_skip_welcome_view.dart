import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/locale/app_localization.dart';

import '../../../../../core/constant/color_app.dart';
import '../../../../../core/constant/styles_app.dart';

class ButtonSkipWelcomeView extends StatelessWidget {
  const ButtonSkipWelcomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
