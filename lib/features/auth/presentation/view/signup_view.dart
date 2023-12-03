import 'package:flutter/material.dart';
import 'package:food_app/features/auth/presentation/view/widgets/signup_view_body.dart';

class SignUpView extends StatelessWidget {
  static String id = '/SignUpView';
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpViewBody(),
    );
  }
}
