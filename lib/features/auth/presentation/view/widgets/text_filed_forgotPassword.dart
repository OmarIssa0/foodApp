import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/locale/app_localization.dart';

import '../../../../../core/constant/my_validators.dart';
import 'custom_button.dart';

class TextFiledForgotPassword extends StatefulWidget {
  const TextFiledForgotPassword({super.key});

  @override
  State<TextFiledForgotPassword> createState() =>
      _TextFiledForgotPasswordState();
}

class _TextFiledForgotPasswordState extends State<TextFiledForgotPassword> {
  late TextEditingController _emailController;

  late final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _ForgotPassword() async {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "E-mailTextFiled".tr(context),
            ),
            validator: (value) {
              return MyValidators.emailValidator(value, context);
            },
          ),
          SizedBox(height: 51.h),
          CustomButton(
            function: () {
              _ForgotPassword();
            },
            name: "Send new password".tr(context),
          )
        ],
      ),
    );
  }
}
