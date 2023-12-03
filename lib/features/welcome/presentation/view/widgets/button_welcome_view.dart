import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/locale/app_localization.dart';

import '../../../../auth/presentation/view/signup_view.dart';
import 'google_button.dart';

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
          const GoogleButton(),
          SizedBox(
            height: 23.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(SignUpView.id);
            },
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
