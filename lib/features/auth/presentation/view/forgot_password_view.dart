import 'package:flutter/material.dart';
import 'package:food_app/features/auth/presentation/view/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  static String id = "/ForgotPasswordView";
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgotPasswordViewBody(),
    );
  }
}
