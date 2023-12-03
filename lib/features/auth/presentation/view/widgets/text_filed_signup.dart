import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/constant/my_validators.dart';
import 'package:food_app/core/locale/app_localization.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/constant/styles_app.dart';
import 'button_signup.dart';

class TextFromFiledSignUp extends StatefulWidget {
  const TextFromFiledSignUp({super.key});

  @override
  State<TextFromFiledSignUp> createState() => _TextFromFiledSignUpState();
}

class _TextFromFiledSignUpState extends State<TextFromFiledSignUp> {
  late TextEditingController _nameTextController,
      _emailTextController,
      _passwordTextController;

  late final FocusNode _nameFocusNode, _emailFocusNode, _passwordFocusNode;
  late final _formKey = GlobalKey<FormState>();
  bool obscureText = true;

  @override
  void initState() {
    // controller
    _nameTextController = TextEditingController();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();

    // focus Node
    _nameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    // controller
    _nameTextController.dispose();
    _emailTextController.dispose();
    _passwordTextController.dispose();

    // focus Node
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();

    super.dispose();
  }

  Future<void> _signUpFct() async {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "FullName".tr(context),
            style: Styles.textStyle16.copyWith(
                color: const Color(0xFF9796A1), fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 12.h),
          TextFormField(
            focusNode: _nameFocusNode,
            controller: _nameTextController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(hintText: "FullName".tr(context)),
            onFieldSubmitted: (value) {
              FocusScope.of(context).requestFocus(_emailFocusNode);
            },
            validator: (value) {
              return MyValidators.displayNameValidator(value, context);
            },
          ),
          SizedBox(height: 29.h),
          Text(
            "E-mail".tr(context),
            style: Styles.textStyle16.copyWith(
                color: const Color(0xFF9796A1), fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 12.h),
          TextFormField(
            focusNode: _emailFocusNode,
            controller: _emailTextController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration:
                InputDecoration(hintText: "E-mailTextFiled".tr(context)),
            onFieldSubmitted: (value) {
              FocusScope.of(context).requestFocus(_passwordFocusNode);
            },
            validator: (value) {
              return MyValidators.emailValidator(value, context);
            },
          ),
          SizedBox(height: 29.h),
          Text(
            "Password".tr(context),
            style: Styles.textStyle16.copyWith(
              color: const Color(0xFF9796A1),
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 12.h),
          TextFormField(
            obscureText: obscureText,
            focusNode: _passwordFocusNode,
            controller: _passwordTextController,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              hintText: "Password".tr(context),
              suffixIcon: IconButton(
                icon: obscureText
                    ? const Icon(IconlyBold.show)
                    : const Icon(IconlyBold.hide),
                color: const Color(0xffD0D2D1),
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
              ),
            ),
            validator: (value) {
              return MyValidators.passwordValidator(value, context);
            },
          ),
          SizedBox(height: 33.h),
          BottomSignUp(
            function: () {
              _signUpFct();
            },
            name: "SignUp".tr(context),
          )
        ],
      ),
    );
  }
}
