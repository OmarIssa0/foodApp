import 'package:flutter/material.dart';

import '../../../../../core/constant/styles_app.dart';

class AlreadyHavAnAccount extends StatelessWidget {
  const AlreadyHavAnAccount({
    super.key,
    required this.name,
    required this.nameButton,
    required this.colorName,
    required this.colorNameButton,
  });

  final String name, nameButton;
  final Color colorName;
  final Color colorNameButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: Styles.textStyle16
              .copyWith(color: colorName, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            // Navigator.of(context).pushNamed(SignUpView.id);
          },
          child: Text(nameButton,
              style: Styles.textStyle16.copyWith(color: colorNameButton)),
        ),
      ],
    );
  }
}
