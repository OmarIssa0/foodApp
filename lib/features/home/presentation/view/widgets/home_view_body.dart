import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/constant/styles_app.dart';
import 'package:food_app/core/locale/app_localization.dart';
import 'package:food_app/core/utils/widgets/dropdown_button_local.dart';

import 'list_item_category.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 75.h),
        const DropdownButtonLocal(),
        Padding(
          padding: EdgeInsetsDirectional.only(start: 25.r),
          child: Text("What would you like to order".tr(context),
              style: Styles.textStyle30.copyWith(
                  fontWeight: FontWeight.w700, color: const Color(0xFF313642))),
        ),
        SizedBox(height: 35.h),
        const ListItemCategory(),
        const Row()
      ],
    );
  }
}
