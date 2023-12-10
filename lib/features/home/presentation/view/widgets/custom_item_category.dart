import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/locale/app_localization.dart';

import '../../../../../core/constant/color_app.dart';

class CustomItemCategory extends StatelessWidget {
  const CustomItemCategory(
      {super.key,
      required this.isActive,
      required this.image,
      required this.title});

  final bool isActive;
  final String image, title;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 100.h,
      width: 60.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.r),
        color: isActive ? AppColor.kOrange : Colors.grey.shade100,
        border: Border.all(color: Colors.black12, width: .2),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
            child: Image.asset(image, height: 50.h),
          ),
          SizedBox(height: 12.h),
          Text(
            title.tr(context),
            style: TextStyle(
                fontSize: 12.sp,
                color: isActive ? Colors.white : Colors.grey,
                fontWeight: FontWeight.w900),
          )
        ],
      ),
    );
  }
}
