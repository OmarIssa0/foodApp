import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/locale/app_localization.dart';

import '../../../../../core/constant/color_app.dart';
import '../../../../../core/constant/styles_app.dart';

class TextWelcomeView extends StatelessWidget {
  const TextWelcomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 28, end: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "WelcomeToApp".tr(context),
            style: TextStyle(
              fontSize: 53.sp,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "FoodHub",
            style: TextStyle(
              fontSize: 53.sp,
              color: AppColor.kOrange,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 19.h,
          ),
          Text(
            "WelcomeToAppDescription".tr(context),
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w400,
              color: const Color(0xFF2F384E),
            ),
          ),
        ],
      ),
    );
  }
}
