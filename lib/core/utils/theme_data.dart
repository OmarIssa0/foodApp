import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color_app.dart';

class Styles {
  static ThemeData themeData({
    required BuildContext context,
    required String fontFamily,
  }) {
    return ThemeData(
      fontFamily: fontFamily,
      useMaterial3: true,
      scaffoldBackgroundColor: const Color(0xffffffff),
      // appBarTheme: const AppBarTheme(
      //   surfaceTintColor: Colors.white,
      //   foregroundColor: Colors.white,
      //   backgroundColor: Colors.white,
      // ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: AppColor.kDark,
        elevation: 10,
        unselectedIconTheme: IconThemeData(color: Color(0xffD3D1D8)),
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        enableFeedback: false,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.all(14.r),
        hintStyle: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xFFC4C4C4),
            fontWeight: FontWeight.w400,
            height: 0),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffEEEEEE),
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(color: AppColor.kOrange)),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.error,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.error,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }
}
