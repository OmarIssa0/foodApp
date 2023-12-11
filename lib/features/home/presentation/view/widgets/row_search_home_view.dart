import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/locale/app_localization.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/constant/color_app.dart';

class RowSearchHomeView extends StatelessWidget {
  const RowSearchHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 256.w,
            height: 51.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xFFEFEFEF), width: 1),
            ),
            child: Row(
              children: [
                SizedBox(width: 18.w),
                const Icon(
                  IconlyLight.search,
                  color: Color(0xff767F9D),
                  size: 16,
                ),
                SizedBox(width: 14.w),
                Text(
                  "Find for food or restaurant...".tr(context),
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xFF9A9FB3),
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
          const Icon(IconlyBold.filter, color: AppColor.kOrange, size: 28)
        ],
      ),
    );
  }
}
