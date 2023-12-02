import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/constant/color_app.dart';
import 'package:food_app/core/constant/image_app.dart';

import '../../../features/welcome/presentation/view/welcome_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: AppColor.kOrange,
      splash: SvgPicture.asset(
        AppImage.kLogoApp,
      ),
      nextScreen: const WelcomeView(),
    );
  }
}
