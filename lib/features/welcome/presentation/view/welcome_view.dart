import 'package:flutter/material.dart';
import 'package:food_app/features/welcome/presentation/view/widgets/welcome_view_body.dart';

class WelcomeView extends StatelessWidget {
  static String id = '/WelcomeView';
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeViewBody(),
    );
  }
}
