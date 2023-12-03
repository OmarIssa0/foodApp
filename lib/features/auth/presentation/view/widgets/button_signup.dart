import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/color_app.dart';
import '../../../../../core/constant/styles_app.dart';

class BottomSignUp extends StatelessWidget {
  const BottomSignUp({super.key, required this.function, required this.name});

  final Function function;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 39.r),
      child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.r),
          ),
          color: AppColor.kOrange,
          minWidth: double.infinity,
          height: 60,
          onPressed: () {
            function();
          },
          child: Text(
            name,
            style: Styles.textStyle15
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          )),
    );
  }
}
