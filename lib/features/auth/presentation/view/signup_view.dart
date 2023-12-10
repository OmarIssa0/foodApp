import 'package:flutter/material.dart';
import 'package:food_app/features/auth/presentation/view/widgets/signup_view_body.dart';

import '../../../../core/constant/image_app.dart';

class SignUpView extends StatelessWidget {
  static String id = '/SignUpView';
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImage.kBackGroundAuth,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          const SignUpViewBody(),
        ],
      ),
    );
  }
}
